Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root to: 'home#index'
  get '/post/like', to: 'home#dar_like_post'
end
