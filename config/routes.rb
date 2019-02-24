Rails.application.routes.draw do
  get 'articles/index'
  resources :articles 

  resources :articles, only: [:index] do
    resources :comment, only: [:create]
 end

  root controller: :articles, action: :index
end
