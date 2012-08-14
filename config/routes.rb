Blogger::Application.routes.draw do

get 'articles' => 'articles#index'
get 'article' => 'article#show '

end
