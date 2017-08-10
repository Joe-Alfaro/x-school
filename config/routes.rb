Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students
  resources :teachers
  resources :teams

  # Change from Andrea for Devise testing
  root to: "home#index"

end
