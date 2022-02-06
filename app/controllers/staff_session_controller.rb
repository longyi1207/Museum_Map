class StaffSessionController < ApplicationController
  def new
  end

  def create
    if params[:staff_session][:email].present?
      staff = Staff.find_by(email: params[:staff_session][:email])
    elsif params[:staff_session][:password].present?
      staff = Staff.find_by(password: params[:staff_session][:password])
    end
    if !staff
      staff = Staff.create(name: params[:staff_session][:name], email: params[:staff_session][:email], password: params[:staff_session][:password])
      puts staff.errors.full_messages
    end
    if staff
      params[:staff_session][:staff_id] = staff.id
      redirect_to '/'
    else
      flash.now[:danger] = 'Invalid'
      render 'new'
    end
  end
end
