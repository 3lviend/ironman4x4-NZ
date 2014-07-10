Refinery::Core::Engine.routes.draw do

  #namespace :products do
  #  resources :products, :path => '', only:[:index, :show]
  #  resources :categories, :path => '', only:[:show]
  #end

  get 'categories/:id/children' => 'products/categories#children', :as => 'category_children', :format => :json

  get 'product-categories/:id' => 'products/categories#index', as: :product_categories
  get 'product-categories/:category_id/:id' => 'products/categories#index', as: :product_subcategories
  get 'product-categories/:category_id/:subcategory_id/:id' => 'products/categories#index', as: :product_sub_subcategories

  get 'category-products/:id' => 'products/products#index', as: :category_products
  get 'category-products/:category_id/:id' => 'products/products#index', as: :subcategory_products
  get 'category-products/:category_id/:subcategory_id/:id' => 'products/products#index', as: :sub_subcategory_products

  get 'products/:category_id/:id' => 'products/products#show', as: :products_category_product
  get 'products/:category_id/:subcategory_id/:id' => 'products/products#show', as: :products_subcategory_product
  get 'products/:category_id/:subcategory_id/:sub_subcategory_id/:id' => 'products/products#show', as: :products_sub_subcategory_product

  get 'categories/:category_id/:id' => 'products/categories#show', as: :subcategory
  get 'categories/:category_id/:subcategory_id/:id' => 'products/categories#show', as: :sub_subcategory


  # Frontend routes
  namespace :products do
    resources :products, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :products, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :products, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Frontend routes
  namespace :products do
    resources :categories, :only => [:index, :show]
  end

  # Admin routes
  namespace :products, :path => '' do
    namespace :admin, :path => "#{Refinery::Core.backend_route}/products" do
      resources :categories, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Frontend routes
  namespace :products do
    resources :vehicles, :only => [:index, :show]
  end

  # Admin routes
  namespace :products, :path => '' do
    namespace :admin, :path => "#{Refinery::Core.backend_route}/products" do
      resources :vehicles, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
