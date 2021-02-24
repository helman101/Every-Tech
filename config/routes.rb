Rails.application.routes.draw do
  resources :users, except: [:edit, :update]

  get 'user/sign_in', to: 'sessions#sign_in'
  post 'user/sign_in', to: 'sessions#create'

  root 'sessions#sign_in'
end
