require 'test_helper'

class TmdbControllerTest < ActionDispatch::IntegrationTest
  test "should get movie" do
    get tmdb_movie_url
    assert_response :success
  end

end
