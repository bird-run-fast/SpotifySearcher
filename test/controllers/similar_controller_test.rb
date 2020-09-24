require 'test_helper'

class SimilarControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get similar_index_url
    assert_response :success
  end

end
