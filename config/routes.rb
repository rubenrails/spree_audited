Spree::Core::Engine.append_routes do
  namespace :admin do
    resources :orders, :only => [] do
      member do
        get :audits
      end
    end
  end
end
