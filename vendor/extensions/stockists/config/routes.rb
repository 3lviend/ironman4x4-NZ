Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :stockists do
    resources :stockists, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :stockists, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :stockists, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
