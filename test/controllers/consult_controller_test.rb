require 'test_helper'

class ConsultControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get consult_home_url
    assert_response :success
  end

end
