class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  private

    def current_user
      @current_user ||= User.find(params[:user_id]) if params[:user_id]
    end
    helper_method :current_user

end
