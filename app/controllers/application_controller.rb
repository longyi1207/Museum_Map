class ApplicationController < ActionController::Base
  include ApplicationHelper
  include UserSessionHelper
  include StaffsSessionHelper
  def destroy_session
    log_out
    redirect_to '/'
  end

  def home
    if logged_in?
      redirect_to current_user
    else
      redirect_to '/user/login'
    end
  end
end
