require 'test_helper'

class OutingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @outing = outings(:one)
  end

  test "should get index" do
    get outings_url
    assert_response :success
  end

  test "should get new" do
    get new_outing_url
    assert_response :success
  end

  test "should create outing" do
    assert_difference('Outing.count') do
      post outings_url, params: { outing: { date: @outing.date} }
    end
    assert_redirected_to outing_url(Outing.last)
    assert session[:outing] = @outing.id
  end

  test "should show outing" do
    get outing_url(@outing)
    assert_response :success
    assert session[:outing] = @outing.id
  end

  test "should get edit" do
    get edit_outing_url(@outing)
    assert_response :success
    assert session[:outing] = @outing.id
  end

  test "should update outing" do
    patch outing_url(@outing), params: { outing: { date: @outing.date } }
    assert_redirected_to outing_url(@outing)
    assert session[:outing] = @outing.id
  end

  test "should destroy outing" do
    assert_difference('Outing.count', -1) do
      delete outing_url(@outing)
    end

    assert_redirected_to outings_url
  end
end
