class AssessmentsController < ApplicationController
  before_action :authenticate_user!

  def new
    @assessment = Assessment.new
  end

  def create
    @assessment = Assessment.new
  end

  private

  def assessment_params
    params.require(:assessment).permit(:title, questions_attributes:[:id, :text])
  end
end