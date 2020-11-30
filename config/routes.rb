Rails.application.routes.draw do
  mount Erp::Core::Engine => '/', as: 'erp'
end
