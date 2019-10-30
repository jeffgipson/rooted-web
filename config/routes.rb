Rails.application.routes.draw do

  resources :tags
  resources :companies

  root "pages#index"
  devise_for :users
end