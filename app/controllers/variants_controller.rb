class VariantsController < ApplicationController
  before_action :set_variant, only: %i[:show, :edit, :update, :destroy]

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

  def destroy
    @variant.destroy
  end

  private

  def set_variant
    @variant = Variant.find_by(id: params[:id])
  end

  def variant_params
    params.require(:variant).permit(:id, :text, :value)
  end
end