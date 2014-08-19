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


  # Frontend routes
  namespace :ironman, :path => '' do
    resources :products, :only => [:index, :show]
    resources :categories, :only => [:index, :show]
    resources :vehicles, :only => [:index, :show]
    resources :media_releases, :only => [:index, :show]
    resources :stockists, :only => [:index, :show]
    resources :warehouses, :only => [:index, :show]
    resources :catalogues, :only => [:index, :show]
    resources :orders, :only => [:index, :show]
  end

  namespace :ironman, :path => '' do
    resources :posts, :path => '/news', :only => [:index, :show]
    resources :blog_posts, :path => '/blog', :only => [:index, :show]

    get '/contact', :to => 'enquiries#new', :as => 'new_enquiry'

    resources :contact, :only => :create, :as => :enquiries, :controller => 'enquiries' do
      get :thank_you, :on => :collection
    end
  end

  # Admin routes
  namespace :ironman, :path => '' do
    namespace :admin, :path => "#{Refinery::Core.backend_route}/ironman" do
      resources :products, :except => :show do
        collection do
          post :update_positions
        end
      end

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

      resources :stockists, :except => :show do
        collection do
          post :update_positions
        end
      end

      resources :posts, :except => :show do
        collection do
          # NOTE: there is no position column on these models, but still need
          # this for some reason...
          post :update_positions

          resources :blog_posts, :except => :show do
            collection do
              post :update_positions
            end
          end

          resources :events, :except => :show do
            collection do
              post :update_positions
            end
          end

          resources :news_items, :except => :show do
            collection do
              post :update_positions
            end
          end
        end
      end

      resources :media_releases, :except => :show do
        collection do
          post :update_positions
        end
      end

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

      resources :orders, :except => :show do
        collection do
          post :update_positions
        end
      end

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
