Rails.application.routes.draw do
  get 'about/index'
  resources :welcome
  resources :heroes, only: [:index, :show] do
      collection do
        get "search"
      end
  end
  resources :primary_attribute, only: [:index, :show]

  root to:"welcome#index"
end
