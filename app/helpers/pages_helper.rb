module PagesHelper
  def helper_get_root_url url
    URI.parse(url).host
  end
end
