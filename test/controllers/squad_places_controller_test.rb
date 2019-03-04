require 'test_helper'

class SquadPlacesControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get squad_places_edit_url
    assert_response :success
  end

end
