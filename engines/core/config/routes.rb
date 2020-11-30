Erp::Core::Engine.routes.draw do
  devise_for :users, class_name: "Erp::User", module: :devise
  root to: 'dashboard#index'
end
