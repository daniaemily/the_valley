require 'test_helper'

class TastingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tastings_index_url
    assert_response :success
  end

end
