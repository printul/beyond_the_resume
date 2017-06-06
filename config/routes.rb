Rails.application.routes.draw do
  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :videos, only: [:index, :show, :new, :create, :destroy]
  resources :postings, only: [:index, :show] do
    resources :applications, only: [:new, :create]
  end

  resources :applications, only: [:index, :show, :edit, :update, :destroy]

  namespace :business do
    resources :videos, only: [:index, :show, :new, :create, :destroy]
    resources :postings, only: [:new, :create, :edit, :update, :destroy]
  end
end
