class PagesController < ApplicationController
  def index
    @news = News.all
    @questions = Question.all
    @posts = @news + @questions
    @posts = @posts.sort_by(&:created_at).reverse!
  end

  def post
    @post = Question.find(params[:id])
  end

  def guidelines
  end

  def security
  end

  def search
  end

  def faq
  end

  def support
  end

  def contact
  end
end
