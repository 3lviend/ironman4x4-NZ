Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :ironman do
    resources :ironman, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :ironman, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :ironman, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
