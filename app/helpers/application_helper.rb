module ApplicationHelper
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    elsif session[:staff_id]
      @current_user ||= Staff.find_by(id: session[:staff_id])      
    end
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    reset_session
    @current_user = nil
  end
end
