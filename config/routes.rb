Rails.application.routes.draw do
  get '/something', to: 'test#index'

  resources :posts

  get '/search', to: 'search#index'
end



























  # scope :api, default: { format: :json } do
  #   get '/posts', to: 'posts_api#index', format: true
  # end
