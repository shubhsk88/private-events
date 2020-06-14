Rails.application.routes.draw do
  resources :registrations
  resources :events
  resources :users
  root "events#index"
  resource :session,only:[:new,:create,:destroy]
  get "signup"=> "users#new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
