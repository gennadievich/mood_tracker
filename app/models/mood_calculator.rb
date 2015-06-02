class MoodCalculator
  def self.weight_to_word(average_mood)
    if average_mood > 0
      "great"
    elsif average_mood < 0
      "bad"
    else
      "good"
    end
  end

  def self.average_mood(moods)
    return 0 if moods.length == 0
    mood_weight = moods.inject(0) { |sum, mood|  sum + mood.weight }
    mood_weight/moods.length
  end
end