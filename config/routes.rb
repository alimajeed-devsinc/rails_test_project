Rails.application.routes.draw do
  get '', to:'posts#index'
  get 'posts/index'
  get 'posts/viewpage'
  get 'posts/show_all'

  resources :articles
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
