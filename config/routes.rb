Rails.application.routes.draw do
  root 'posts#top'
  resources :posts, only: [:index, :new, :create, :show, :destroy]
end
