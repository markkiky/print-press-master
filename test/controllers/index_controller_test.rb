require 'test_helper'

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get liqour_permits" do
    get index_liqour_permits_url
    assert_response :success
  end

end
