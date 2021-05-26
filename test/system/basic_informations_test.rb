require "application_system_test_case"

class BasicInformationsTest < ApplicationSystemTestCase
  setup do
    @basic_information = basic_informations(:one)
  end

  test "visiting the index" do
    visit basic_informations_url
    assert_selector "h1", text: "Basic Informations"
  end

  test "creating a Basic information" do
    visit basic_informations_url
    click_on "New Basic Information"

    click_on "Create Basic information"

    assert_text "Basic information was successfully created"
    click_on "Back"
  end

  test "updating a Basic information" do
    visit basic_informations_url
    click_on "Edit", match: :first

    click_on "Update Basic information"

    assert_text "Basic information was successfully updated"
    click_on "Back"
  end

  test "destroying a Basic information" do
    visit basic_informations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Basic information was successfully destroyed"
  end
end
