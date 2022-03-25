require 'test_helper'

class RecepieFoodsControllerTest < ActionDispatch::IntegrationTest
  test 'should get new' do
    get recepie_foods_new_url
    assert_response :success
  end

  test 'should get edit' do
    get recepie_foods_edit_url
    assert_response :success
  end
end
