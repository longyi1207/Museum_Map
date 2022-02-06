class UserSessionController < ApplicationController
  def new
    if logged_in?
      redirect_to current_user
    end
  end

  def create
    if params[:session][:email].present?
      @user = User.find_by(email: params[:session][:email])
    elsif params[:session][:phone].present?
      @user  = User.find_by(phone: params[:session][:phone])
    end
    if !@user 
      @user  = User.create(name: params[:session][:name], email: params[:session][:email], phone: params[:session][:phone])
    end
    if @user.save 
      puts session 
      reset_session
      user_log_in @user 
      redirect_to @user 
    else
      flash.now[:danger] = 'Invalid'
      render 'new'
    end
  end
end
