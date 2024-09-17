Rails.application.routes.draw do
  devise_for :users 
  resources :users, only: [] do
    resource :profile, only: [:edit, :update, :show]
  end


  root to: "boards#index"

  resources :boards do
    resources :tasks 
      
  end

  resources :tasks, only: [] do
    resources :comments, only: [:new, :destroy, :create]
  end
  
end


