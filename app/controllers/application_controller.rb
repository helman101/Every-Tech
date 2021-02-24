class ApplicationController < ActionController::Base
  include ApplicationHelper

  helper_method :current_user

  def current_user
    User.find(session[:current_user_id])
  end

end
