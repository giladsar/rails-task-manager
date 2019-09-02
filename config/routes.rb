Rails.application.routes.draw do
  # get 'tasks/index'
  # get 'tasks/show'
  # get 'tasks/new'
  # get 'tasks/create'
  # get 'tasks/edit'
  # get 'tasks/update'
  # get 'tasks/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index', as: :home
  get 'task/new', to: 'tasks#new', as: :new
  get 'task/:id', to: 'tasks#show', as: :show
  post 'tasks', to: 'tasks#create'
  get 'task/:id/edit', to: 'tasks#edit', as: :task
  patch 'task/:id/edit', to: 'tasks#update'
  delete 'task/:id', to: 'tasks#destroy'
end
