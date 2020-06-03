class AssessmentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_assessment, only: [:show, :edit, :update, :destroy]

  def index
    @assessments = Assessment.all
  end

  def new
    @assessment = Assessment.new
  end

  def show
    if @assessment.blank?
      redirect_to assessment_path
    else
      @questions = @assessment.questions
    end
  end

  def create
    @assessment = Assessment.new(assessment_params)
    if @assessment.save
      redirect_to @assessment
    else
      render :new
    end
  end

  def destroy
    @assessment.destroy
    respond_to do |format|
      format.html { redirect_to assessments_url, notice: 'assessment was destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_assessment
    @assessment = Assessment.find_by(id: params[:id])
  end

  def assessment_params
    params.require(:assessment).permit(:title,:_destroy, questions_attributes: [:id, :text, variants_attributes: [:id, :text, :value, :_destroy] ])
  end
end