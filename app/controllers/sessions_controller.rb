class SessionsController < ApplicationController

  def new

  end

  def create
    email = params[:email]
    password = params[:password]

    user = User.find_by(email: email)
    if user && password == user.password
      session[:user_id] = user.id
      redirect_to root_path
    else
      redirect_to new_session_path
    end
  end

  def destroy
    reset_session

    redirect_to new_session_path
  end


end
