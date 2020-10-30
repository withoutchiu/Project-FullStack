Rails.application.routes.draw do
  get 'role/index'
  get 'role/show'
  get 'about/index'
  resources :welcome
  resources :heroes, only: [:index, :show] do
      collection do
        get "search"
      end
  end
  resources :primary_attribute, only: [:index, :show]
  resources :about
  resources :role, only: [:index, :show]

  root to:"welcome#index"
end
