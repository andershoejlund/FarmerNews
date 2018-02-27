class VotesController < ApplicationController
  before_action :authenticate_user!

  def vote_up
    if params[:type] == "0" #news
      record = News.find(params[:id])
      vote = Vote.new(news_id: record.id, user_id: current_user.id, type_oh: record.type_oh)
    else
      record = Question.find(params[:id])
      vote = Vote.new(question_id: record.id, user_id: current_user.id, type_oh: record.type_oh)
    end
    @type_oh = params[:type]
    @post_id = record.id
    if vote.valid?
      vote.save
      @post_votes = record.votes.length.to_s
      respond_to {|f| f.js  }
    else
      head :ok
    end
  end

end

