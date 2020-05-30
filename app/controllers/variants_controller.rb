class VariantsController < ApplicationController
  before_action :set_variant, only: [:show, :edit, :update, :destroy]

  def index
    @variants = Variant.all
  end

  def new
    @variant = Variant.new
  end

  # def show
  # end

  def create
    @variant = Variant.new(variant_params)
  end

  # def update
  #   respond_to do |format|
  #     if @variant.update(variant_params)
  #       format.html { redirect_to @variant, notice: 'Variant was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @variant }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @variant.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  def destroy
    @variant.destroy
  end

  private

  def set_variant
    @variant = Variant.find_by(id: params[:id])
    respond_to do |format|
      format.html { redirect_to variants_url, notice: 'variant was destroyed.' }
      format.json { head :no_content }
    end
  end

  def variant_params
    params.require(:variant).permit(:text)
  end
end