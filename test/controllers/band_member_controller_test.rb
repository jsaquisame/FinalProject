require 'test_helper'

class BandMemberControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get band_member_index_url
    assert_response :success
  end

  test "should get show" do
    get band_member_show_url
    assert_response :success
  end

end
