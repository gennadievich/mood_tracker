class HomeController < ApplicationController
  def index
    @moods = Mood.order('created_at desc').limit(10)
    @average_mood = MoodCalculator.average_mood(Mood.all)
  end
end
