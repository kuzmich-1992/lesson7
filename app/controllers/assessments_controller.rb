class AssessmentsController < ApplicationController

  before_action :authenticate_user!

  def new
    @assessment = Assessment.new
  end
end