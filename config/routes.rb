# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'diaries#index'

  get 'pages/about'
  get 'pages/help'

  resources :diaries, except: [:show] do
    collection do
      post :auto_save
      get :time_travel
    end
  end

  resources :imports, only: [:new, :create]
  resources :exports, only: [:index]

  devise_for :users
end
