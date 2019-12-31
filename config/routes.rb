# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :rides do
    resources :ride_requests # table name aayaga yaha pe
  end
  resources :users
  resources :ride_requests
  resources :logins, only: [:create, :new]
  resource :logout, only: [:destroy]
  resource :welcome, only: [:index]

  root 'welcome#index'

end
