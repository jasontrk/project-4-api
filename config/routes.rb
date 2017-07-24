Rails.application.routes.draw do
  scope :api do
    resources :media
    resources :users
  end
end
