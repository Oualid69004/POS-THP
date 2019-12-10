require 'test_helper'

class PaymentinControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get paymentin_index_url
    assert_response :success
  end

end
