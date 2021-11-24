require 'test_helper'

class TwiControllsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get twi_controlls_index_url
    assert_response :success
  end

end
