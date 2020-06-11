Rails.application.routes.draw do
  resources :events
  resources :users
  
  resource :session,only:[:new,:create,:destroy]
  get "signup"=> "users#new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
