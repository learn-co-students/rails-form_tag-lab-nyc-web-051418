Rails.application.routes.draw do
  resources :students, only: [:index, :new, :create]
  get '/students/:id', to: 'students#show', as: 'student'
  # get '/students/new', to: 'students#new_student', as: 'new'

end
