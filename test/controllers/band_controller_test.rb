require 'test_helper'

class BandControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get band_index_url
    assert_response :success
  end

  test "should get show" do
    get band_show_url
    assert_response :success
  end

end
