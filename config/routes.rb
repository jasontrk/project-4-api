Rails.application.routes.draw do
  resources :media
  scope :api do
    resources :users
  end
end
