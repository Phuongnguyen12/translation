class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # TODO enable basic auth here
end
