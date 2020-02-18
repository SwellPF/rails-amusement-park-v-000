class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?

  def hello
  end

  private 
  
  def current_user
    @current_user ||= User.find_by(id: session[:name]) if session[:name]
  end

  def logged_in?
    !!current_user
  end

  def authenticate_user
    if !logged_in? 
      redirect to root_path
    end
  end

end
