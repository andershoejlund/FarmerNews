class QuestionsController < ApplicationController


  def new
  end

  def index
  end

  def edit
  end

  def show
  end

  def create
    @question = Question.new(question_params)

    respond_to do |format|
      if @question.save
        format.html { redirect_to @question }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity}
      end
    end
  end

  private

  def question_params
    params.require(:question).permit(:title, :description, :user_id)
  end

end
