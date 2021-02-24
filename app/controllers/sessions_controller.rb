class SessionsController < ApplicationController
  def sign_in; end

  def create
    @user = User.find_by(session_params)
    if @user
      session[:current_user_id] = session_params
      redirect_to @user, notice: 'Sing in successfully'
    else
      session[:current_user_id] = nil
      render 'sign_in', notice: 'user doesn\'t exist'
    end
  end

  private

  def session_params
    params.require(:session).permit(:name)
  end
end
