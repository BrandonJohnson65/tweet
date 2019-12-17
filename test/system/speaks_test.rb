require "application_system_test_case"

class SpeaksTest < ApplicationSystemTestCase
  setup do
    @speak = speaks(:one)
  end

  test "visiting the index" do
    visit speaks_url
    assert_selector "h1", text: "Speaks"
  end

  test "creating a Speak" do
    visit speaks_url
    click_on "New Speak"

    fill_in "Speak", with: @speak.speak
    click_on "Create Speak"

    assert_text "Speak was successfully created"
    click_on "Back"
  end

  test "updating a Speak" do
    visit speaks_url
    click_on "Edit", match: :first

    fill_in "Speak", with: @speak.speak
    click_on "Update Speak"

    assert_text "Speak was successfully updated"
    click_on "Back"
  end

  test "destroying a Speak" do
    visit speaks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Speak was successfully destroyed"
  end
end
