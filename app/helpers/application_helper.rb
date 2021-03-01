module ApplicationHelper
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

  def notice_or_alert
    if flash[:notice]
      render partial: 'shared/notice'
    elsif flash[:alert]
      render partial: 'shared/alert'
    end
  end

  def vote_or_unvote(article)
    vote = Vote.find_by(article: article, user: current_user)
    if vote
      render partial: 'shared/unvote', object: vote
    else
      render partial: 'shared/vote'
    end
  end
end
