Rails.application.routes.draw do

  resources :companies

  root "pages#index"
  devise_for :users
end