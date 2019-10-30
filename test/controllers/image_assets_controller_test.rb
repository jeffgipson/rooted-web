require 'test_helper'

class ImageAssetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @image_asset = image_assets(:one)
  end

  test "should get index" do
    get image_assets_url
    assert_response :success
  end

  test "should get new" do
    get new_image_asset_url
    assert_response :success
  end

  test "should create image_asset" do
    assert_difference('ImageAsset.count') do
      post image_assets_url, params: { image_asset: { image: @image_asset.image, name: @image_asset.name, tags_id: @image_asset.tags_id } }
    end

    assert_redirected_to image_asset_url(ImageAsset.last)
  end

  test "should show image_asset" do
    get image_asset_url(@image_asset)
    assert_response :success
  end

  test "should get edit" do
    get edit_image_asset_url(@image_asset)
    assert_response :success
  end

  test "should update image_asset" do
    patch image_asset_url(@image_asset), params: { image_asset: { image: @image_asset.image, name: @image_asset.name, tags_id: @image_asset.tags_id } }
    assert_redirected_to image_asset_url(@image_asset)
  end

  test "should destroy image_asset" do
    assert_difference('ImageAsset.count', -1) do
      delete image_asset_url(@image_asset)
    end

    assert_redirected_to image_assets_url
  end
end
