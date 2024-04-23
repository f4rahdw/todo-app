Rails.application.routes.draw do
  devise_for :users
  # todos :projects
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'projects#index'
  resources :projects do
    resources :todos
  end
  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
end
