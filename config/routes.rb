Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
    post 'like/:post_id' => 'likes#create', as: 'like'
  post 'dislike/:post_id' => 'likes#destroy', as: 'dislike'
  root 'posts#index'
  resources :users, only: :show
  resources :posts, only: [:create, :new]
  resources :comments , only: [:new, :create]
end
