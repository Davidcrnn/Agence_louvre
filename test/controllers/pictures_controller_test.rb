require 'test_helper'

class PicturesControllerTest < ActionDispatch::IntegrationTest
  test "should get detroy" do
    get pictures_detroy_url
    assert_response :success
  end

end
