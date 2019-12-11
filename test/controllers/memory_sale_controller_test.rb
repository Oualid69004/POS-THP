require 'test_helper'

class MemorySaleControllerTest < ActionDispatch::IntegrationTest
  test "should get destroy" do
    get memory_sale_destroy_url
    assert_response :success
  end

end
