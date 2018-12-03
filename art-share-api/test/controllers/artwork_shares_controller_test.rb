require 'test_helper'

class ArtworkSharesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artwork_share = artwork_shares(:one)
  end

  test "should get index" do
    get artwork_shares_url, as: :json
    assert_response :success
  end

  test "should create artwork_share" do
    assert_difference('ArtworkShare.count') do
      post artwork_shares_url, params: { artwork_share: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show artwork_share" do
    get artwork_share_url(@artwork_share), as: :json
    assert_response :success
  end

  test "should update artwork_share" do
    patch artwork_share_url(@artwork_share), params: { artwork_share: {  } }, as: :json
    assert_response 200
  end

  test "should destroy artwork_share" do
    assert_difference('ArtworkShare.count', -1) do
      delete artwork_share_url(@artwork_share), as: :json
    end

    assert_response 204
  end
end
