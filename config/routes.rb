Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Changes from Andrea for Devise build
  root to: "teams#index"
  devise_for :students
  devise_for :teachers

  resources :students
  resources :teachers
  resources :teams
  resources :rules
end
