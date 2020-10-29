Rails.application.routes.draw do
  resources :welcome
  resources :heroes, only: [:index, :show]
  resources :primary_attribute, only: [:index, :show]
end
