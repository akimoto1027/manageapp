Rails.application.routes.draw do
  devise_for :users
  root 'posts#top'
  resources :posts
  resources :users, only: :show
end
