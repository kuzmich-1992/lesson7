class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  # GET /questions
  # GET /questions.json
  def index
    @questions = Question.all
  end

  # GET /questions/1
  # GET /questions/1.json
  # def show
  # end

  # GET /questions/new
  def new
    @question = Question.new
  end

  # GET /questions/1/edit
  # def edit
  #   @question = Question.find(params[:id])
  # end

  # POST /questions
  # POST /questions.json
  def create
    @question = Question.new(question_params)
  end

  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to variants_path, notice: 'Question was successfully updated.' }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: 'question was destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_question
    @question = Question.find_by(id: params[:id])
  end

  def question_params
    params.require(:question).permit(:text, :variants, variants_attributes:[:id, :text, :value, :_destroy])
  end
end
