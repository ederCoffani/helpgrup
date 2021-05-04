require "application_system_test_case"

class GrupsTest < ApplicationSystemTestCase
  setup do
    @grup = grups(:one)
  end

  test "visiting the index" do
    visit grups_url
    assert_selector "h1", text: "Grups"
  end

  test "creating a Grup" do
    visit grups_url
    click_on "New Grup"

    fill_in "Description", with: @grup.description
    fill_in "Links", with: @grup.links
    fill_in "Title", with: @grup.title
    click_on "Create Grup"

    assert_text "Grup was successfully created"
    click_on "Back"
  end

  test "updating a Grup" do
    visit grups_url
    click_on "Edit", match: :first

    fill_in "Description", with: @grup.description
    fill_in "Links", with: @grup.links
    fill_in "Title", with: @grup.title
    click_on "Update Grup"

    assert_text "Grup was successfully updated"
    click_on "Back"
  end

  test "destroying a Grup" do
    visit grups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Grup was successfully destroyed"
  end
end
