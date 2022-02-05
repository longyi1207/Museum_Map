class UserSessionController < ApplicationController
  def new
  end

  def create
    if params[:user_session][:email].present?
      user = User.find_by(email: params[:user_session][:email])
    elsif params[:user_session][:phone].present?
      user = User.find_by(phone: params[:user_session][:phone])
    end
    if !user
      user = User.create(name: params[:user_session][:name], email: params[:user_session][:email], phone: params[:user_session][:phone])
      puts user.errors.full_messages
    end
    if user
      params[:user_session][:user_id] = user.id
      redirect_to '/'
    else
      flash.now[:danger] = 'Invalid'
      render 'new'
    end
  end
end
