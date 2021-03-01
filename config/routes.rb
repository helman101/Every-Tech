Rails.application.routes.draw do
  resources :users, except: [:edit, :update]
  resources :articles do
    resources :votes, only: [:create, :destroy]
  end
  resources :categories, only: [:index, :show, :destroy]

  get 'user/sign_in', to: 'sessions#sign_in'
  post 'user/sign_in', to: 'sessions#create'
  delete 'user/log_out', to: 'sessions#log_out'

  root 'categories#index'
end
