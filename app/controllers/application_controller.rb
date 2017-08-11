class ApplicationController < ActionController::Base
  # Devise
  protect_from_forgery with: :exception
  devise_group :user, contains: [:student, :teacher]

end
