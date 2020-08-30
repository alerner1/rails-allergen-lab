Rails.application.routes.draw do
  resources :recipes
  resources :ingredients
  resources :users
  resources :recipe_ingredients, only: []
  resources :user_ingredients, only: []
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
