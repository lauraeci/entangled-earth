require 'test_helper'

class RetrospectivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @retrospective = retrospectives(:one)
  end

  test "should get index" do
    get retrospectives_url
    assert_response :success
  end

  test "should get new" do
    get new_retrospective_url
    assert_response :success
  end

  test "should create retrospective" do
    assert_difference('Retrospective.count') do
      post retrospectives_url, params: { retrospective: {  } }
    end

    assert_redirected_to retrospective_path(Retrospective.last)
  end

  test "should show retrospective" do
    get retrospective_url(@retrospective)
    assert_response :success
  end

  test "should get edit" do
    get edit_retrospective_url(@retrospective)
    assert_response :success
  end

  test "should update retrospective" do
    patch retrospective_url(@retrospective), params: { retrospective: {  } }
    assert_redirected_to retrospective_path(@retrospective)
  end

  test "should destroy retrospective" do
    assert_difference('Retrospective.count', -1) do
      delete retrospective_url(@retrospective)
    end

    assert_redirected_to retrospectives_path
  end
end
