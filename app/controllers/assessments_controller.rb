class AssessmentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_assessment, only: %i[show]

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

  private

  def set_assessment
  	@assessment = Assessment.find_by(id: params[:id])
  end

  def assessment_params
    params.require(:assessment).permit(:title, questions_attributes:[:id, :text])
  end
end