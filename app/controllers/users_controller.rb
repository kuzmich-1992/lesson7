class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to action: :index
    else
      render 'validation error'
    end
  end

  # #def show
  # end

  # def edit
  # end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      render 'Profile updated'
      redirect_to @user
    else
      render 'edit'
    end
  end

  def delete
    @user = User.find(params[:id])
    @user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name)
  end
end