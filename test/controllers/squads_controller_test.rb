require 'test_helper'

class SquadsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get squads_index_url
    assert_response :success
  end

  test "should get new" do
    get squads_new_url
    assert_response :success
  end

  test "should get edit" do
    get squads_edit_url
    assert_response :success
  end

end
