Rails.application.routes.draw do
  resources :orders
  resources :order_items
  resources :products
  match '/auth/:provider/callback', to: 'sessions#create', via: :get
  match "/login" => redirect("/auth/twitter"), as: :login, via: :get
  match "/logout" => "sessions#destroy", as: :logout, via: :get


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
