Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Show all tasks
  get 'tasks', to: 'tasks#index'

  # Create new task
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # Read one task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # Update tasks
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # Delete tasks
  delete 'tasks/:id', to: 'tasks#destroy'
end
