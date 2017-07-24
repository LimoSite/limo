require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get impritn" do
    get static_pages_impritn_url
    assert_response :success
  end

end
