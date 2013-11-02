Demo::Application.routes.draw do
  
  devise_for :users, path_names: {sign_in: 'login', sign_out: 'logout'}

  resources :microposts
  resources :users
  resources :blog_posts

  root to: 'users#index'
end
