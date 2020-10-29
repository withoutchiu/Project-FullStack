Rails.application.routes.draw do
  get 'primary_attribute/index'
  get 'primary_attribute/show'
  resources :heroes, only: [:index, :show]
end
