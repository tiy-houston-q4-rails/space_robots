Rails.application.routes.draw do

  resources :robots, only: [:index, :show, :create, :update, :destroy]
  resources :missions, only: [:index, :show, :create, :update, :destroy]

end
