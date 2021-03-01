class ApplicationController < ActionController::Base
  include ApplicationHelper

  helper_method :current_user, :require_login

  def current_user
    User.find(session[:current_user_id])
  end

  def require_login
    unless session[:current_user_id]
      flash[:alert] = 'You must be signed in to access this section'
      redirect_to user_sign_in_path
    end
  end
end
