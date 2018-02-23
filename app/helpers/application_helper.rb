module ApplicationHelper
  def helper_active_link link
    "active" if current_page?(link)
  end
end
