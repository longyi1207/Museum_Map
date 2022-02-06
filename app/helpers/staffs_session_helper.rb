module StaffsSessionHelper
  def staff_log_in(staff)
    session[:staf_id] = staff.id
    session[:isStaff] = true
  end
end
