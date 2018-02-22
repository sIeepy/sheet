Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :outcomes do
    collection { post :import }
  end
  resources :incomes
end
