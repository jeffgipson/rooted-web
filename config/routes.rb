Rails.application.routes.draw do

  resources :image_assets
  resources :tags
  resources :companies

  root "pages#index"
  devise_for :users
end