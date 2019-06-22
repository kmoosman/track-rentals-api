require 'test_helper'

class TranspondersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get transponders_index_url
    assert_response :success
  end

end
