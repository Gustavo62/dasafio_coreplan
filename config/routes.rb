Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root to: 'home#index'
  get '/post/like',              to: 'home#dar_like_post'
  get '/post/curtidos',          to: 'home#curtidas'
  get '/usuarios',               to: 'home#usuarios'
  get '/seguir',                 to: 'home#seguir'
  get '/notificacao',            to: 'home#notificacao'
  get '/visualizar',             to: 'home#visualizar'
  get '/visualizar/notificacao', to: 'home#visualizar_notificacao'
  get '/post/like/pessoal',      to: 'posts#dar_like_post'
end
