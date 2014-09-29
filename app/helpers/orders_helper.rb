module OrdersHelper
  def num_items_in_cart
    if cookies[:wishlist].present?
      lines = []

      items = cookies[:wishlist].split ','
      items.each do |item|
        a = item.split '|'
        product_id = a[0]
        quantity = a[1].to_i
        if not product_id.nil? and quantity >= 1
          lines << {
            product_id: product_id,
            quantity: quantity
          }
        end
      end

      lines.size
    end
  end
end

