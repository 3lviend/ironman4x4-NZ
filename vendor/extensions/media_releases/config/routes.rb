Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :media_releases do
    resources :media_releases, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :media_releases, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :media_releases, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
