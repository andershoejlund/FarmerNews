module PagesHelper
  def helper_get_root_url url
    URI.parse(url).host
  end

  def check_if_already_voted_helper post_id, post_type
    if post_type == 0 # news
      current_user.votes.detect{|v| v.news_id == post_id }
    else
      current_user.votes.detect{|v| v.question_id == post_id }
    end
  end
end
