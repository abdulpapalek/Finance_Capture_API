require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get :home
    assert_response :success
    assert_not_nit assigns(:commodities)
  end
end
