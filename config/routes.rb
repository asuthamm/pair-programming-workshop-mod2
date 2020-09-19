Rails.application.routes.draw do
  # get 'restaurants/index'
  # get 'restaurants/show'
  resources :restaurants, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end
