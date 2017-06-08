Rails.application.routes.draw do
  get '/qrcode' => 'qrcode#show', as: :qrcode

  mount RailsAdmin::Engine => '/super_admin', as: 'rails_admin'
  ActiveAdmin.routes(self)
  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }


  root to: 'pages#home'
  resources :users, only: [:show]
  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :videos, only: [:index, :show, :new, :create, :destroy]
  resources :postings, only: [:index, :show] do
    resources :applications, only: [:new, :create]
  end

  resources :applications, only: [:index, :show, :edit, :update, :destroy]

  resources :businesses do
    resources :videos, only: [:index, :show, :new, :create, :destroy]
    resources :postings, only: [:index, :new, :create, :edit, :update, :destroy]
  end
end
