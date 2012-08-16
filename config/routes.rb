Blogger::Application.routes.draw do
  resources :user_sessions

  resources :users

  resources :articles
  resources :comments
  resources :tags

  get 'login'  => 'user_sessions#new'
  get 'logout' => 'user_sessions#destroy'

  root :to => "articles#index"
end
