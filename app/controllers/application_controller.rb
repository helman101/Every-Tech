class ApplicationController < ActionController::Base
  helper_method :current_user, :login_or_logout

  def current_user
    User.find(session[:current_user_id])
  end

  def login_or_logout
    if session[:current_user_id].nil?
      render partial: 'shared/log_in'
    else
      render partial: 'shared/log_out'
    end
  end

  def user_signed_in?
    !session[:current_user_id].nil?
  end
end
