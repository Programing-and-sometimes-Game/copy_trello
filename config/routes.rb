Rails.application.routes.draw do
  root 'users/show'
  resources :users
  resources :groups, only: [:show, :edit, :new, :create, :destroy]
  get 'group_boards/show'
  get 'group_members/index'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
