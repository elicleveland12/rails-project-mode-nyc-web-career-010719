Rails.application.routes.draw do
  resources :payments
  resources :users, except: [:index]
  resources :vehicles, except: [:index]
  resources :appointments
  resources :mechanics, except: [:index]
  resources :sessions
  get '/', to: 'sessions#new'
  post '/', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
