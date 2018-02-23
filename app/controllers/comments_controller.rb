class CommentsController < ApplicationController
  def new
  end

  def index
  end

  def edit
  end

  def show
  end

  def create
    @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity}
      end
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:title, :description, :user_id, :question_id, :new_id)
  end

end
