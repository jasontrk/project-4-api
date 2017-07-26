Rails.application.routes.draw do
  get 'tmdb/movie'

  scope :api do
    resources :media
    resources :users
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
    get '/movie', to: 'tmdb#movie'
  end
end
