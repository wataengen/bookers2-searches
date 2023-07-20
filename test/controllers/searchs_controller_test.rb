require "test_helper"

class SearchsControllerTest < ActionDispatch::IntegrationTest
  test "should get search_result" do
    get searchs_search_result_url
    assert_response :success
  end
end
