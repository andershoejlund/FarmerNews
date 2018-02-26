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
    if params[:search][:string].empty? || params[:search][:string].size > 50
      flash.now[:notice] = "Your search is either empty or too long (max 50 characters). Try again."
      render :search
    else
      news = News.where('lower(title) ILIKE ?', '%' + params[:search][:string].downcase + '%')
      questions = Question.where('lower(title) ILIKE ?', '%' + params[:search][:string].downcase +  '%')
      @search_string = params[:search][:string]
      @results = news + questions
      @results = @results.sort_by(&:created_at).reverse!
    end
  end

  def faq
  end

  def support
  end

  def contact
  end
end
