class StaffSessionController < ApplicationController
  def new
  end

  def create
    staff = Staff.find_by(email: params[:staff_session][:email])
    if staff && staff.authenticate(params[:staff_session][:password])
      reset_session
      staff_log_in staff
      redirect_to staff
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
end
