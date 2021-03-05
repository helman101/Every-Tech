module UsersHelper
  def same_user?
    return if session[:current_user_id].to_i == params[:id].to_i

    redirect_to root_path, alert: 'You can\'t access this page'
  end
end
