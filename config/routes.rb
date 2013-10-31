Demo::Application.routes.draw do
  
  resources :microposts
  resources :users
  resources :blog_posts

  root to: 'users#index'
end
