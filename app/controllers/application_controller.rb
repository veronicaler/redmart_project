class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

def welcome
  render html: "Welcome"
end
end
