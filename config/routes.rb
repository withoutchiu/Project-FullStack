Rails.application.routes.draw do
  resources :heroes, only: [:index, :show]
  resources :primary_attributes, only: [:index, :show]
end
