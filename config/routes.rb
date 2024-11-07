Rails.application.routes.draw do
  root 'teachers#home'

  # Routes for students
  resources :students

  # Routes for teachers
  resources :teachers, only: [:index, :new, :create, :destroy]

  # Routes for sessions (login/logout)
  get 'login', to: 'sessions#new'     # Show login form
  post 'login', to: 'sessions#create' # Handle login
  delete 'logout', to: 'sessions#destroy' # Handle logout

  # Health check route for load balancers
  get "up" => "rails/health#show", as: :rails_health_check
end
