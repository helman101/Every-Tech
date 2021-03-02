class SessionsController < ApplicationController
  def sign_in; end

  def create
    @user = User.find_by(name: session_params[:name])
    if @user
      session[:current_user_id] = @user.id
      redirect_to root_path, notice: 'Sing in successfully'
    else
      session[:current_user_id] = nil
      flash.now[:alert] = 'User doesn\'t exist'
      render 'sign_in'
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
