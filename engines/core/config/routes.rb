Erp::Core::Engine.routes.draw do
  resources :carts
  resources :line_items
  resources :orders
  resources :books
  devise_for :users, class_name: "Erp::User", module: :devise
  resources :users, only: [:update, :destroy, :show]
  root to: 'dashboard#index'
  namespace :admin do
    get '/' => 'admin#index'
    resources :users, only: [:index, :edit, :update]
  end
end
