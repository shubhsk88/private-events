Rails.application.routes.draw do
  
  resources :users

  resources :events do
    resources :registrations
  end
  root "events#index"
  resource :session,only:[:new,:create,:destroy]
  get "signup"=> "users#new"
  post "registrations"=>"registrations#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
