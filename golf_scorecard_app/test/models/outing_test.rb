require 'test_helper'

class OutingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "calculating outing average" do
    outing = outings(:two)
    outing_rounds = [rounds(:one), rounds(:two)]
    average = outing.calculate_average(outing_rounds)
    assert  '%.4f' % average === '%.4f' % ((rounds(:one).score + rounds(:two).score).to_f / 2)
  end

  test "calculating outing winner" do
    outing = outings(:two)
    outing_rounds = [rounds(:one), rounds(:two)]
    winner = outing.calculate_winner(outing_rounds)
    assert winner == rounds(:one)
  end
end
