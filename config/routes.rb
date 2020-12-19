Rails.application.routes.draw do
  devise_for :usuarios
  root 'home#index'
  get 'kanban/index'
  resources :atividades
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
