class PagesController < ApplicationController
  def index
    @news = News.all
    @questions = Question.all
    @posts = @news.any? ? @news.merge(@questions) : @questions
  end

  def guidelines
  end

  def faq
  end

  def support
  end

  def contact
  end
end
