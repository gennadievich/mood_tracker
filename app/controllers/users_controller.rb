class UsersController < ApplicationController

  def index

  end

  def show

    @user = User.find(params[:id])
    @moods = @user.moods.order('created_at desc').limit(10)
    @average_mood = MoodCalculator.average_mood(@user.moods)

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
