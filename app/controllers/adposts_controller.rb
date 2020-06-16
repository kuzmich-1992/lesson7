class AdpostsController < ApplicationController
  # before_action :authenticate_user!
  # before_action :set_adpost, only: [:show, :edit, :update, :destroy]

  def index
    @adposts = Adpost.all
  end

  def new
    @adpost = Adpost.new
  end

  def show
    @adpost = Adpost.find(params[:id])
  end

  def create
    @adpost = Adpost.new(adpost_params)
    if @adpost.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def destroy
    @adpost.destroy
    respond_to do |format|
      format.html { redirect_to adposts_url, notice: 'adpost was deleted.' }
      format.json { head :no_content }
    end
  end

  private

  def set_adpost
    @adpost = Adpost.find_by(id: params[:id])
  end

  def adpost_params
    params.require(:adpost).permit(:title,:_destroy, :description, :company_name, :id)
  end
end

