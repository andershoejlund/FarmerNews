class SubmitsController < ApplicationController
  before_action :authenticate_user!
  def new
  end

  def create
    if params[:content][:title].empty?
      flash.now[:notice] = "You're missing a title. Fill it and try again."
      render :new
    elsif (params[:content][:description].present? && params[:content][:url].present?)
      flash.now[:notice] = "You can't have both url and description filled. Read more in the bottom of the page."
      render :new
    elsif !(params[:content][:url] =~ /\A#{URI::regexp(['http', 'https'])}\z/)
      flash.now[:notice] = "Your URL is invalid. Remember http:// or https://. Try again"
      render :new
    else
      @record = params[:content][:description].present? ?
        Question.new(question_params) : News.new(news_params)
        @record.user_id = current_user.id
      if @record.save
        redirect_to root_path, notice: "'#{@record.title}' has been submittet"
      end
    end
  end

  private

  def question_params
    params.require(:content).permit(:title, :description, :user_id)
  end

  def news_params
    params.require(:content).permit(:title, :url, :user_id)
  end
end
