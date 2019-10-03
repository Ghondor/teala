Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'service', to: 'pages#service'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :contacts, only: [:create]
  resources :foods, only: [:index, :show]

  root 'pages#home'
end
