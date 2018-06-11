Rails.application.routes.draw do
  resources :students, only: [:index, :new, :show, :create]
  # get '/students/:id', to: 'students#show', as: 'student'
  root :to => 'students#index'
end
