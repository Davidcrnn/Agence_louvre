Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'
  devise_scope :user do
    get 'users/sign_out' => "devise/sessions#destroy"
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :ventes
  resources :locations
  resources :contacts, only: [:new, :create]

  get '/mentions' => 'pages#mention'
end

