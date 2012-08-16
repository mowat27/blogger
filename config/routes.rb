Blogger::Application.routes.draw do
  resources :users

  resources :articles
  resources :comments
  resources :tags

end
