require "application_system_test_case"

class CompaniesTest < ApplicationSystemTestCase
  setup do
    @company = companies(:one)
  end

  test "visiting the index" do
    visit companies_url
    assert_selector "h1", text: "Companies"
  end

  test "creating a Company" do
    visit companies_url
    click_on "New Company"

    fill_in "Facebook url", with: @company.Facebook_URL
    fill_in "Google a id", with: @company.Google_A_ID
    fill_in "Instagram url", with: @company.Instagram_URL
    fill_in "Linkedin url", with: @company.LinkedIn_URL
    fill_in "Twitter url", with: @company.Twitter_URL
    fill_in "Address", with: @company.address
    fill_in "City", with: @company.city
    fill_in "Name", with: @company.name
    fill_in "Phone", with: @company.phone
    fill_in "State", with: @company.state
    fill_in "Website", with: @company.website
    fill_in "Zip", with: @company.zip
    click_on "Create Company"

    assert_text "Company was successfully created"
    click_on "Back"
  end

  test "updating a Company" do
    visit companies_url
    click_on "Edit", match: :first

    fill_in "Facebook url", with: @company.Facebook_URL
    fill_in "Google a id", with: @company.Google_A_ID
    fill_in "Instagram url", with: @company.Instagram_URL
    fill_in "Linkedin url", with: @company.LinkedIn_URL
    fill_in "Twitter url", with: @company.Twitter_URL
    fill_in "Address", with: @company.address
    fill_in "City", with: @company.city
    fill_in "Name", with: @company.name
    fill_in "Phone", with: @company.phone
    fill_in "State", with: @company.state
    fill_in "Website", with: @company.website
    fill_in "Zip", with: @company.zip
    click_on "Update Company"

    assert_text "Company was successfully updated"
    click_on "Back"
  end

  test "destroying a Company" do
    visit companies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Company was successfully destroyed"
  end
end
