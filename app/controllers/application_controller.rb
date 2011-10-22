class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  before_filter :authenticate

  private
    def authenticate
      deny_access unless signed_in?  
    end
  
end
