class ApplicationController < ActionController::Base
  include ApplicationHelper
  include UserSessionHelper
  def destroy_session
    log_out
    redirect_to '/'
  end
end
