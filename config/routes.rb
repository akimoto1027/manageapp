Rails.application.routes.draw do
  devise_for :users
  root 'posts#top'
  resources :posts, only: [:index, :new, :create, :show, :destroy, :edit, :update]
end
