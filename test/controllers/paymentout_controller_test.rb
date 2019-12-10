require 'test_helper'

class PaymentoutControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get paymentout_index_url
    assert_response :success
  end

end
