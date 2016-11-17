class Outing < ApplicationRecord


  def calculate_average(rounds)
    sum = 0
    rounds.each do |round|
      sum += round.score
    end
    sum.to_f / rounds.length
  end

  def calculate_winner(rounds)
    low_score = rounds.first
    rounds.each do |round|
      if round.score < low_score.score
        low_score = round
      end
    end
    low_score
  end



end
