require "test_helper"

class PlaneSearchControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get plane_search_index_url
    assert_response :success
  end
end
