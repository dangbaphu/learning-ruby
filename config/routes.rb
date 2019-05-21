Rails.application.routes.draw do
  resources :users
  get 'users/index'
  get 'users/new'
  get 'users/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products do
  collection { post :import }
  end
end
