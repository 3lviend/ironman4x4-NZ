crumb :root do
  link t('breadcrumbs.home'), refinery.root_path
end

crumb :categories do
  link t('breadcrumbs.products'), refinery.ironman_products_path
end

crumb :fit_my_4x4_results_categories do
  link t('breadcrumbs.fit_my_4x4_results'), refinery.ironman_fit_my_4x4_results_path
  parent :fit_my_4x4
end

crumb :blog_posts do
  link t('breadcrumbs.blog_posts'), refinery.ironman_blog_posts_path
end

crumb :posts do
  link t('breadcrumbs.posts'), refinery.ironman_posts_path
end

crumb :post do |post|
  link post.title, refinery.ironman_post_path(post)
  if post.instance_of?(Refinery::Ironman::BlogPost)
    parent :blog_posts
  else
    parent :posts
  end
end

crumb :media_releases do
  link t('breadcrumbs.media_releases'), refinery.ironman_media_releases_path
end

crumb :media_release do |media_release|
  link media_release.title, refinery.ironman_media_release_path(media_release)
  parent :media_releases
end

crumb :catalogues do
  link t('breadcrumbs.catalogues'), refinery.ironman_catalogues_path
end

crumb :catalogue do |catalogue|
  link catalogue.title, refinery.ironman_catalogue_path(catalogue)
  parent :catalogues
end

crumb :category do |category|
  if category.depth == 0
    url = refinery.product_categories_path(category)
  elsif category.depth == 1
    url = refinery.product_subcategories_path(category.parent, category)
  else
    url = refinery.product_sub_subcategories_path(category.parent.parent, category.parent, category)
  end

  link category.name, url

  if category.root?
    parent :categories
  else
    parent :category, category.parent
  end
end

crumb :fit_my_4x4_results_category do |category|
  if category.depth == 0
    url = refinery.ironman_fit_my_4x4_results_product_categories_path(category)
  elsif category.depth == 1
    url = refinery.ironman_fit_my_4x4_results_product_subcategories_path(category.parent, category)
  else
    url = refinery.ironman_fit_my_4x4_results_product_sub_subcategories_path(category.parent.parent, category.parent, category)
  end

  link category.name, url

  if category.root?
    parent :fit_my_4x4_results_categories
  else
    parent :fit_my_4x4_results_category, category.parent
  end
end

crumb :category_info do |category|
  if category.depth == 0
    url = refinery.product_categories_path(category)
  elsif category.depth == 1
    url = refinery.product_subcategories_path(category.parent, category)
  else
    url = refinery.product_sub_subcategories_path(category.parent.parent, category.parent, category)
  end

  link t('breadcrumbs.category_info', :category => category.name), url

  if category.root?
    parent :categories
  else
    parent :category, category.parent
  end
end

crumb :product do |product|
  link product.name, product
  parent :category, product.categories.first
end

crumb :fit_my_4x4 do
  link t('breadcrumbs.fit_my_4x4'), refinery.fit_my_4x4_path
end

crumb :fit_my_4x4_results do
  link t('breadcrumbs.fit_my_4x4_results'), refinery.ironman_fit_my_4x4_results_path
  parent :fit_my_4x4
end

crumb :newsletter_thank_you do
  link t('breadcrumbs.newsletter_thank_you'), refinery.newsletter_thank_you_path
end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).
