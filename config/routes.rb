Rails.application.routes.draw do
  devise_for :users
  root to: 'post_images#index'
  resources :post_images, only: [:new,:create,:index,:show,:destroy] do
    resource :favolites, only: [:create, :destroy]
    resources :post_comments, only: [:create,:destroy]
  end  
  resources :users, only: [:show,:edit,:update]
end
