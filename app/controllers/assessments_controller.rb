class AssessmentsController < ApplicationController
  before_action :authenticate_user!

  def new
    @assessment = Assessment.new
  end

  def create
    @assessment = Assessment.build(assessment_params)
  end

  private

  def assessment_params
    params.require(:assessment).permit(:title,question_attributes: [:text])
  end
end