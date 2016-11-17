require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course = courses(:old_course)
  end

  test "should get index" do
    get courses_url
    assert_response :success
  end

  test "should get new" do
    get new_course_url
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post courses_url, params: { course: { course_rating: @course.course_rating, name: @course.name, par: @course.par, slope: @course.slope, yards: @course.yards } }
    end
    assert_redirected_to course_url(Course.last)
    assert session[:course] = @course.id
  end

  test "should show course" do
    get course_url(@course)
    assert_response :success
    assert session[:course] = @course.id
  end

  test "should get edit" do
    get edit_course_url(@course)
    assert_response :success
    assert session[:course] = @course.id
  end

  test "should update course" do
    patch course_url(@course), params: { course: { course_rating: @course.course_rating, name: @course.name, par: @course.par, slope: @course.slope, user_average: @course.user_average, yards: @course.yards } }
    assert_redirected_to course_url(@course)
    assert session[:course] = @course.id
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete course_url(@course)
    end

    assert_redirected_to courses_url
  end
end
