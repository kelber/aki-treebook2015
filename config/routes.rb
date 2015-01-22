Rails.application.routes.draw do
  devise_for :users
  resources :statuses

    root 'statuses#index'

  get '/register' , to: 'devise/registration#new', as: :register


  get '/:feed', to: 'statuses#index', as: :feed

end
