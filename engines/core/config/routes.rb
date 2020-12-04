Erp::Core::Engine.routes.draw do
  resources :order_details
  resources :orders
  resources :books
  devise_for :users, class_name: "Erp::User", module: :devise
  root to: 'dashboard#index'
  namespace :admin do
    get '/' => 'admin#index'
    resources :users, only: :index
  end
end
