require "application_system_test_case"

class RemembersTest < ApplicationSystemTestCase
  setup do
    @remember = remembers(:one)
  end

  test "visiting the index" do
    visit remembers_url
    assert_selector "h1", text: "Remembers"
  end

  test "creating a Remember" do
    visit remembers_url
    click_on "New Remember"

    fill_in "Email", with: @remember.email
    fill_in "Name", with: @remember.name
    fill_in "Phone", with: @remember.phone
    click_on "Create Remember"

    assert_text "Remember was successfully created"
    click_on "Back"
  end

  test "updating a Remember" do
    visit remembers_url
    click_on "Edit", match: :first

    fill_in "Email", with: @remember.email
    fill_in "Name", with: @remember.name
    fill_in "Phone", with: @remember.phone
    click_on "Update Remember"

    assert_text "Remember was successfully updated"
    click_on "Back"
  end

  test "destroying a Remember" do
    visit remembers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Remember was successfully destroyed"
  end
end
