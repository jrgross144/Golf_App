class User < ApplicationRecord
  def update_handicap(round)
    self.handicap = 0
    if self.handicap.nil?
      old = 0
    else
      old = self.handicap
    end
    course = Course.find(round.course_id)
    if course.course_rating.nil? or course.course_rating == 0
      course_rating = course.par
    else
      course_rating = course.course_rating
    end

    if course.slope.nil? or course.slope == 0
      slope = 113
    else
      slope = course.slope
    end

    num_of_rounds = Round.where(user_id: round.user_id).count
    round_handicap = (round.score - course_rating) * 113 / slope
    if num_of_rounds > 1
      self.handicap = ((old * num_of_rounds-1)+round_handicap)/(num_of_rounds)
    else
      self.handicap = round_handicap
    end
    self.update(handicap: self.handicap)
  end
end
