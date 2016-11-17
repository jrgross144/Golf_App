require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "update course average" do
    course = courses(:old_course)
    course.update_average(rounds(:one))
    assert '%.1f' % course.user_average == '%.1f' % 69.0
  end
end
