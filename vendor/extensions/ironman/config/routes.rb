Refinery::Core::Engine.routes.draw do

  get 'categories/:id/children' => 'ironman/categories#children', :as => 'category_children', :format => :json
  get 'vehicles/:id/children' => 'ironman/vehicles#children', :as => 'vehicle_children', :format => :json

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

  # fitting instructions - index pages of products for a given category
  get 'fitting-instructions' => 'ironman/fitting_instructions#index', as: :fitting_instructions
  get 'fitting-instructions/:id' => 'ironman/fitting_instructions#index', as: :fitting_instructions_category_products
  get 'fitting-instructions/:category_id/:id' => 'ironman/fitting_instructions#index', as: :fitting_instructions_subcategory_products
  get 'fitting-instructions/:category_id/:subcategory_id/:id' => 'ironman/fitting_instructions#index', as: :fitting_instructions_sub_subcategory_products

  get 'fit-my-4x4' => 'ironman/fit_my_car#index', as: :fit_my_4x4

  #get 'fit-my-4x4/results' => 'ironman/fit_my_car#results', as: :fit_my_4x4_results
  #get 'fit-my-4x4/results/:id' => 'ironman/fit_my_car#results', as: :fit_my_4x4_results_category_products
  #get 'fit-my-4x4/results/:category_id/:id' => 'ironman/fit_my_car#results', as: :fit_my_4x4_results_subcategory_products
  #get 'fit-my-4x4/results/:category_id/:subcategory_id/:id' => 'ironman/fit_my_car#results', as: :fit_my_4x4_results_sub_subcategory_products

  namespace :ironman, :path => 'fit-my-4x4/results' do
    get '/' => 'products#index', as: :fit_my_4x4_results, :defaults => {:filter_generic_categories => true, :fit_my_4x4 => true}

    # index pages of categories
    get 'product-categories/:id' => 'categories#index', as: :fit_my_4x4_results_product_categories, :defaults => {:filter_generic_categories => true, :fit_my_4x4 => true}
    get 'product-categories/:category_id/:id' => 'categories#index', as: :fit_my_4x4_results_product_subcategories, :defaults => {:filter_generic_categories => true, :fit_my_4x4 => true}
    get 'product-categories/:category_id/:subcategory_id/:id' => 'categories#index', as: :fit_my_4x4_results_product_sub_subcategories, :defaults => {:filter_generic_categories => true, :fit_my_4x4 => true}

    # index pages of products for a given category
    get 'category-products/:id' => 'products#index', as: :fit_my_4x4_results_category_products, :defaults => {:filter_generic_categories => true, :fit_my_4x4 => true}
    get 'category-products/:category_id/:id' => 'products#index', as: :fit_my_4x4_results_subcategory_products, :defaults => {:filter_generic_categories => true, :fit_my_4x4 => true}
    get 'category-products/:category_id/:subcategory_id/:id' => 'products#index', as: :fit_my_4x4_results_sub_subcategory_products, :defaults => {:filter_generic_categories => true, :fit_my_4x4 => true}
  end


  post 'newsletter/subscribe' => 'ironman/newsletter#subscribe', as: :newsletter_subscribe
  get 'newsletter/thank-you' => 'ironman/newsletter#thank_you', as: :newsletter_thank_you


  # Frontend routes
  namespace :ironman, :path => '' do
    resources :products, :only => [:index, :show]
    resources :categories, :only => [:index, :show]
    resources :vehicles, :only => [:index, :show]
    resources :media_releases, :only => [:index, :show], :path => '/media-releases'
    resources :stockists, :only => [:index, :show], :path => '/store-locator'
    resources :warehouses, :only => [:index, :show]
    resources :catalogues, :only => [:index, :show]
    resources :orders, :only => [:new, :create], :path => '/quote'
  end

  namespace :ironman, :path => '' do
    resources :posts, :path => '/news', :only => [:index, :show]
    resources :news_items, :path => '/news', :only => [:index, :show]
    resources :events, :path => '/news', :only => [:index, :show]
    resources :blog_posts, :path => '/blog', :only => [:index, :show]

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

      resources :orders

      resources :enquiries, :only => [:index, :show, :destroy] do
        get :spam, :on => :collection
        get :toggle_spam, :on => :member
      end

      scope :path => 'enquiries' do
        resources :settings, :only => [:edit, :update]
      end
    end
  end

  # TODO: remove this. Temporarily redirect 404s to root page
  get '*path', to: redirect('/') unless Rails.env.development?
end
