Rails.application.routes.draw do
  get 'group_boards/show'
  get 'group_members/index'
  get 'groups/show'
  get 'groups/new'
  get 'groups/edit'
  get 'boards/show'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'users/edit'
  get 'users/update'
  get 'users/new'
  get 'users/create'
  get 'users/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
