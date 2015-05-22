class UsersController < ApplicationController

  def index

  end

  def show
    begin
      @user = User.find(params[:id])
    rescue
      redirect_to user_path(current_user)
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      login(@user)
      redirect_to user_path(@user)
    else
      render :new
    end

  end


  private

  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end

end
