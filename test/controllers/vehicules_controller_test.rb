require "test_helper"

class VehiculesControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get vehicules_name_url
    assert_response :success
  end
end
