require 'test_helper'

class DevicesControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get devices_edit_url
    assert_response :success
  end

end
