class SessionsController < ApplicationController
  def sign_in; end

  def create
    user = User.find_by(name: session_params[:name])
    if user
      session[:current_user_id] = user.id
      redirect_to user, notice: 'Sing in successfully'
    else
      session[:current_user_id] = nil
      render 'sign_in', notice: 'user doesn\'t exist'
    end
  end

  def log_out
    session[:current_user_id] = nil
    redirect_to root_path, alert: 'You Sign out succesfully'
  end

  private

  def session_params
    params.require(:session).permit(:name)
  end
end
