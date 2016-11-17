require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "handicap changes based on a new round" do
    jordan = users(:one)
    jordan.update_handicap(rounds(:one))
    assert '%.4f' % -6.078030303030303 == '%.4f' % users(:one).handicap
  end

end
