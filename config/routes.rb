Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students
  resources :teachers do
    resources :teams
  end

  root to: "home#index"
end
