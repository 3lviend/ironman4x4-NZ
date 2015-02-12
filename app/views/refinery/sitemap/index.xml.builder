xml.instruct!

xml.urlset "xmlns" => "http://www.sitemaps.org/schemas/sitemap/0.9" do

  @locales.each do |locale|
    ::I18n.locale = locale
    ::Refinery::Page.live.in_menu.includes(:parts).each do |page|
      # exclude sites that are external to our own domain.
      page_url = if page.url.is_a?(Hash)
        # This is how most pages work without being overriden by link_url
        page.url.merge({:only_path => false})
      elsif page.url.to_s !~ /^http/
        # handle relative link_url addresses.
        [request.protocol, request.host_with_port, page.url].join
      end

      # Add XML entry only if there is a valid page_url found above.
      xml.url do
        xml.loc url_for(page_url)
        xml.lastmod page.updated_at.iso8601
      end if page_url.present? and page.show_in_menu?
    end

    xml.url do
      xml.loc url_for(refinery.ironman_stockists_url)
      xml.lastmod Refinery::Ironman::Stockist.maximum(:updated_at).iso8601
    end

    xml.url do
      xml.loc url_for(refinery.ironman_new_enquiry_url)
      xml.lastmod Refinery::Ironman::Warehouse.maximum(:updated_at).iso8601
    end

    xml.url do
      xml.loc url_for(refinery.ironman_catalogues_url)
      xml.lastmod Refinery::Ironman::Catalogue.maximum(:updated_at).iso8601
    end

    xml.url do
      xml.loc url_for(refinery.ironman_orders_url)
      xml.lastmod Refinery::Ironman::Stockist.maximum(:updated_at).iso8601
    end

    ::Refinery::Ironman::Product.active.includes(:categories, :vehicles).references(:categories, :vehicles).each do |product|
      category = product.category

      page_url = Rails.cache.fetch ([product, :product_url]) do
        if category.nil?
          refinery.ironman_product_url(product)
        elsif category.depth == 0
          refinery.products_category_product_url(category, product)
        elsif category.depth == 1
          refinery.products_subcategory_product_url(category.parent, category, product)
        elsif category.depth == 2
          refinery.products_sub_subcategory_product_url(category.parent.parent, category.parent, category, product)
        end
      end

      xml.url do
        xml.loc url_for(page_url)
        xml.lastmod product.updated_at.iso8601
      end if page_url.present?
    end

    ::Refinery::Ironman::Category.active.each do |category|
      page_url = nil
      fitting_instructions_url = nil

      page_url, fitting_instructions_url = Rails.cache.fetch ([category, :category_url]) do
        if category.depth == 0
          page_url = refinery.product_categories_url(category)
          fitting_instructions_url = refinery.fitting_instructions_category_products_url(category) if category.has_fitting_instructions
        elsif category.depth == 1
          page_url = refinery.product_subcategories_url(category.parent, category)
          fitting_instructions_url = refinery.fitting_instructions_subcategory_products_url(category.parent, category) if category.has_fitting_instructions
        else
          page_url = refinery.product_sub_subcategories_url(category.parent.parent, category.parent, category)
          fitting_instructions_url = refinery.fitting_instructions_sub_subcategory_products_url(category.parent.parent, category.parent, category) if category.has_fitting_instructions
        end

        [page_url, fitting_instructions_url]
      end

      xml.url do
        xml.loc url_for(page_url)
        xml.lastmod category.updated_at.iso8601
      end if page_url.present?

      xml.url do
        xml.loc url_for(fitting_instructions_url)
        xml.lastmod category.updated_at.iso8601
      end if fitting_instructions_url.present?
    end

    ::Refinery::Ironman::Post.active.each do |post|
      page_url = refinery.ironman_post_url(post)

      xml.url do
        xml.loc url_for(page_url)
        xml.lastmod post.updated_at.iso8601
      end if page_url.present?
    end

    ::Refinery::Ironman::MediaRelease.active.each do |media_release|
      page_url = refinery.ironman_media_release_url(media_release)

      xml.url do
        xml.loc url_for(page_url)
        xml.lastmod media_release.updated_at.iso8601
      end if page_url.present?
    end
  end

end
