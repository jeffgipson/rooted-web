Rails.application.routes.draw do
<<<<<<< HEAD:config/routes.rb
  resources :companies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
=======
  root "pages#index"
  devise_for :users
>>>>>>> a292e31926cd9f4847d263492c954d70cee04695:rooted-web/config/routes.rb
end
