class Mood < ActiveRecord::Base
  belongs_to :user

  def weight
    if self.status == 'bad'
      -10
    elsif self.status == 'good'
      0
    elsif self.status == 'great'
      10
    end
  end
end
