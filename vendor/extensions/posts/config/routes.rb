Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :posts, :path => '' do
    resources :posts, :path => '/news', :only => [:index, :show]
  end

  # Admin routes
  namespace :posts, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :posts, :except => :show do
        collection do
          # NOTE: there is no position column on these models, but still need
          # this for some reason...
          post :update_positions
        end
      end

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

end
