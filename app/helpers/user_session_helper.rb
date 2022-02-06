module UserSessionHelper
  def user_log_in(user)
    session[:user_id] = user.id
    session[:isStaff] = false
  end
end
