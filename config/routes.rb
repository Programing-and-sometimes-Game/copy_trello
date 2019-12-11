Rails.application.routes.draw do
  root 'sessions#new'
  
  get '/signup', to:'users#new'
  post '/signup', to:'users#create'
  get '/login', to:"sessions#new"
  post '/login', to:"sessions#create"
  delete'/logout', to:'sessions#destroy'

  resources :users, only: [:new, :create, :edit, :update, :show] do
    resources :groups, only: [:show, :edit, :new, :create, :destroy]
    resources :boards, only: [:create, :destroy, :update, :show, :new] do
      resources :lists, only: [:create, :destroy, :update]
    end
  end
  resources :tasks, only: [:create, :destroy, :update]
  resources :check_lists, only: [:create, :destroy, :update]
  resources :check_list_items, only: [:create, :destroy, :update]
  resources :achieved_tasks, only: [:create, :destroy]
  resources :board_inviting_mails, only: [:create, :destroy]
  resources :add_user_to_boards, only: [:create, :destroy]
  resources :tagged_tasks, only: [:create, :destroy]

  resources :group_members, only: [:create, :destroy, :index]
  resources :group_boards, only: [:create, :destroy, :update, :show]
  resources :group_lists, only: [:create, :destroy, :update]
  resources :group_tasks, only: [:create, :destroy, :update]
  resources :group_check_lists, only: [:create, :destroy, :update]
  resources :group_check_list_items, only: [:create, :destroy, :update]
  resources :group_tagged_tasks, only: [:create, :destroy]
  resources :group_achieved_tasks, only: [:create, :destroy]
  resources :group_board_inviting_mails, only: [:create, :destroy]

end
