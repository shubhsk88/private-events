Rails.application.routes.draw do
  resources :users
  
  get "signup"=> "users#new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
