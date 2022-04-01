Rails.application.routes.draw do
  get '', to:'posts#index'
  get 'posts/index'
  get 'posts/viewpage'

  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
