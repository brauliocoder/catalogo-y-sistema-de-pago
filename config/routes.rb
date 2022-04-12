Rails.application.routes.draw do
  root 'catalogues#index'
  
  devise_for :users
  devise_for :admins
  
  authenticate :admin do
    resources :products
    resources :profiles
  end
  
  resource :cart, only: [:show, :update]
end
