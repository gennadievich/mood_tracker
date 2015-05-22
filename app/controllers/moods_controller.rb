class MoodsController < ApplicationController

  def create
    @mood = Mood.new(status:params[:status])
    @mood.user = current_user
    @mood.save
    redirect_to :back
  end

  private

end
