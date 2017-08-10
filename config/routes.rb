Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students
  resources :teachers
  resources :teams

  # Changes from Andrea for Devise build
  root to: "home#index"
  devise_for :students
  devise_for :teachers

end
