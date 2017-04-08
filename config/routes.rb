Rails.application.routes.draw do
  resources :holes
  resources :outings
  resources :rounds
  resources :courses
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/select" => "users#select"
end
