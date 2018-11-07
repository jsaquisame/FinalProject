Rails.application.routes.draw do
  get 'band/index'
  get 'band/show'
  
  root to: 'band#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
