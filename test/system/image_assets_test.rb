require "application_system_test_case"

class ImageAssetsTest < ApplicationSystemTestCase
  setup do
    @image_asset = image_assets(:one)
  end

  test "visiting the index" do
    visit image_assets_url
    assert_selector "h1", text: "Image Assets"
  end

  test "creating a Image asset" do
    visit image_assets_url
    click_on "New Image Asset"

    fill_in "Image", with: @image_asset.image
    fill_in "Name", with: @image_asset.name
    fill_in "Tags", with: @image_asset.tags_id
    click_on "Create Image asset"

    assert_text "Image asset was successfully created"
    click_on "Back"
  end

  test "updating a Image asset" do
    visit image_assets_url
    click_on "Edit", match: :first

    fill_in "Image", with: @image_asset.image
    fill_in "Name", with: @image_asset.name
    fill_in "Tags", with: @image_asset.tags_id
    click_on "Update Image asset"

    assert_text "Image asset was successfully updated"
    click_on "Back"
  end

  test "destroying a Image asset" do
    visit image_assets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Image asset was successfully destroyed"
  end
end
