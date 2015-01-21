Rails.application.routes.draw do
  devise_for :users
  resources :statuses

    root 'statuses#index'


end
