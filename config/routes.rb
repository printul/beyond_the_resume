Rails.application.routes.draw do
  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :videos, only: [:index, :show, :new, :create, :destroy]
  resources :applications

  namespace :business do
    resources :videos, only: [:index, :show, :new, :create, :destroy]
    resources :postings
  end
end
