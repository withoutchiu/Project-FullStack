Rails.application.routes.draw do
  get 'heroes/index'
  get 'heroes/show'
  get 'welcome/index'

  root 'welcome#index'
end
