Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :orders do
      member do
        get :audits
      end
    end
  end
end
