require 'test_helper'

class SongControllerTest < ActionDispatch::IntegrationTest
  test "should get genre" do
    get song_genre_url
    assert_response :success
  end

  test "should get popularity" do
    get song_popularity_url
    assert_response :success
  end

end
