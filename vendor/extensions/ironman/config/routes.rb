Refinery::Core::Engine.routes.draw do

  get 'categories/:id/children' => 'ironman/categories#children', :as => 'category_children', :format => :json

  # index pages of categories
  get 'product-categories/:id' => 'ironman/categories#index', as: :product_categories
  get 'product-categories/:category_id/:id' => 'ironman/categories#index', as: :product_subcategories
  get 'product-categories/:category_id/:subcategory_id/:id' => 'ironman/categories#index', as: :product_sub_subcategories

  # index pages of products for a given category
  get 'category-products/:id' => 'ironman/products#index', as: :category_products
  get 'category-products/:category_id/:id' => 'ironman/products#index', as: :subcategory_products
  get 'category-products/:category_id/:subcategory_id/:id' => 'ironman/products#index', as: :sub_subcategory_products

  # product show pages nested under specific categories
  get 'products/:category_id/:id' => 'ironman/products#show', as: :products_category_product
  get 'products/:category_id/:subcategory_id/:id' => 'ironman/products#show', as: :products_subcategory_product
  get 'products/:category_id/:subcategory_id/:sub_subcategory_id/:id' => 'ironman/products#show', as: :products_sub_subcategory_product

  # category show pages
  get 'categories/:category_id/:id' => 'ironman/categories#show', as: :subcategory
  get 'categories/:category_id/:subcategory_id/:id' => 'ironman/categories#show', as: :sub_subcategory

  # fitting instructions - index pages of products for a given category
  get 'fitting-instructions' => 'ironman/fitting_instructions#index', as: :fitting_instructions
  get 'fitting-instructions/:id' => 'ironman/fitting_instructions#index', as: :fitting_instructions_category_products
  get 'fitting-instructions/:category_id/:id' => 'ironman/fitting_instructions#index', as: :fitting_instructions_subcategory_products
  get 'fitting-instructions/:category_id/:subcategory_id/:id' => 'ironman/fitting_instructions#index', as: :fitting_instructions_sub_subcategory_products


  # Frontend routes
  namespace :ironman, :path => '' do
    resources :products, :only => [:index, :show]
    resources :categories, :only => [:index, :show]
    resources :vehicles, :only => [:index, :show]
    resources :media_releases, :only => [:index, :show]
    resources :stockists, :only => [:index, :show], :path => '/store-locator'
    resources :warehouses, :only => [:index, :show]
    resources :catalogues, :only => [:index, :show]
    resources :orders, :only => [:index, :show]
  end

  namespace :ironman, :path => '' do
    resources :posts, :path => '/news', :only => [:index, :show]
    resources :blog_posts, :path => '/blog', :only => [:index, :show]
    resources :events, :path => '/news', :only => [:index, :show]

    get '/contact', :to => 'enquiries#new', :as => 'new_enquiry'

    resources :contact, :only => :create, :as => :enquiries, :controller => 'enquiries' do
      get :thank_you, :on => :collection
    end
  end

  # Admin routes
  namespace :ironman, :path => '' do
    namespace :admin, :path => "#{Refinery::Core.backend_route}/ironman" do
      resources :products, :except => :show

      resources :categories, :except => :show do
        collection do
          post :update_positions
        end
      end

      resources :vehicles, :except => :show do
        collection do
          post :update_positions
        end
      end

      resources :stockists, :except => :show

      resources :posts, :except => :show do
        collection do
          resources :blog_posts, :except => :show
          resources :events, :except => :show
          resources :news_items, :except => :show
        end
      end

      resources :media_releases, :except => :show

      resources :warehouses, :except => :show do
        collection do
          post :update_positions
        end
      end

      resources :catalogues, :except => :show do
        collection do
          post :update_positions
        end
      end

      resources :orders, :except => :show

      resources :enquiries, :only => [:index, :show, :destroy] do
        get :spam, :on => :collection
        get :toggle_spam, :on => :member
      end

      scope :path => 'enquiries' do
        resources :settings, :only => [:edit, :update]
      end
    end
  end

end
