Blogger::Application.routes.draw do
  resources :user_sessions

  resources :users

  resources :articles
  resources :comments
  resources :tags

end
