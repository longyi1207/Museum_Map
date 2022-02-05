require "application_system_test_case"

class ExhibitsTest < ApplicationSystemTestCase
  setup do
    @exhibit = exhibits(:one)
  end

  test "visiting the index" do
    visit exhibits_url
    assert_selector "h1", text: "Exhibits"
  end

  test "should create exhibit" do
    visit exhibits_url
    click_on "New exhibit"

    fill_in "Intro", with: @exhibit.intro
    fill_in "Name", with: @exhibit.name
    check "Treasure" if @exhibit.treasure
    click_on "Create Exhibit"

    assert_text "Exhibit was successfully created"
    click_on "Back"
  end

  test "should update Exhibit" do
    visit exhibit_url(@exhibit)
    click_on "Edit this exhibit", match: :first

    fill_in "Intro", with: @exhibit.intro
    fill_in "Name", with: @exhibit.name
    check "Treasure" if @exhibit.treasure
    click_on "Update Exhibit"

    assert_text "Exhibit was successfully updated"
    click_on "Back"
  end

  test "should destroy Exhibit" do
    visit exhibit_url(@exhibit)
    click_on "Destroy this exhibit", match: :first

    assert_text "Exhibit was successfully destroyed"
  end
end
