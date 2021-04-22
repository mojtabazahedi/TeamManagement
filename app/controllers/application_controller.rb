class ApplicationController < ActionController::Base

    protected

    def current_user
        @current_user ||= session[:user_id] && User.find_by(id: session[:user_id])
    end
    helper_method :current_user

    def logged_in?
        current_user.is_a? User
    end
    helper_method :logged_in?

    def access_denied
        redirect_to login_path, notice: "Please log in to continue" and return false
    end

    def authenticate
        logged_in? ? true : access_denied
    end

end
