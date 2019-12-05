require 'test_helper'

class GroupBoardsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get group_boards_show_url
    assert_response :success
  end

end
