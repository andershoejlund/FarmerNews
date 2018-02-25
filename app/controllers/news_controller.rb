class NewsController < ApplicationController
  def index
    @posts = News.all
  end
end
