class Course < ApplicationRecord
  def update_average(round)
    if self.user_average.nil?
      old = 0
    else
      old = self.user_average
    end
    num_of_rounds = Round.where(course_id: round.course_id).count
    if num_of_rounds < 2
      self.user_average = round.score
    elsif old == 0
      rounds = Round.where(course_id: round.course_id)
      total = 0
      rounds.each do |temp_round|
        total += temp_round.score
      end
      self.user_average = (total)/num_of_rounds
    else
      self.user_average = ((old * num_of_rounds-1)+round.score)/(num_of_rounds)
    end
    self.update(user_average: self.user_average)
  end
end
