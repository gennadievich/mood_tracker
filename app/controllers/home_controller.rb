class HomeController < ApplicationController
  def index
    @moods = Mood.order('created_at desc').limit(10)
  end
end
