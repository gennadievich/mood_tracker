class MoodsController < ApplicationController

  before_action :check_last_mood_time

  def create
    @mood = Mood.new(status:params[:status])
    @mood.user = current_user
    @mood.save
    redirect_to :back
  end

  private

  def check_last_mood_time
    if last_mood = current_user.moods.last
    difference = Time.now - last_mood.created_at
      if difference < 120
        last_mood.delete
      end
    end
  end

end
