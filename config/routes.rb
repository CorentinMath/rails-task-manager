Rails.application.routes.draw do

  get "tasks" => "tasks#index", as: :tasks

  get "tasks/new" => "tasks#new", as: :new_task
  post "tasks" => "tasks#create"

  get "tasks/:id" => "tasks#show", as: :task

  get "tasks/:id/edit" => "tasks#edit", as: :edit_task
  patch "tasks/:id" => "tasks#update"

  delete "tasks/:id" => "tasks#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
