Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
    get 'welcome/index'
  end
 
  root 'flights#index'

  resources :flights
  resources :aeroplanes


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrailsexit.org/routing.html
end
