# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [] do
    resource :profile, only: %i[edit update show]
  end

  root to: 'boards#index'

  resources :boards do
    resources :tasks
  end

  resources :tasks, only: [] do
    resources :comments, only: %i[new destroy create]
  end
end
