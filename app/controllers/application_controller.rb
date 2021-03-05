class ApplicationController < ActionController::Base
  include ApplicationHelper

  helper_method :current_user, :require_login

  def current_user
    User.find(session[:current_user_id])
  end

  def require_login
    return if session[:current_user_id]

    redirect_to user_sign_in_path, alert: 'You must be signed in to access this section'
  end
end
