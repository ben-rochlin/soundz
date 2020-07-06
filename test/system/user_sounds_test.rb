require "application_system_test_case"

class UserSoundsTest < ApplicationSystemTestCase
  setup do
    @user_sound = user_sounds(:one)
  end

  test "visiting the index" do
    visit user_sounds_url
    assert_selector "h1", text: "User Sounds"
  end

  test "creating a User sound" do
    visit user_sounds_url
    click_on "New User Sound"

    fill_in "Sound", with: @user_sound.sound_id
    fill_in "User", with: @user_sound.user_id
    click_on "Create User sound"

    assert_text "User sound was successfully created"
    click_on "Back"
  end

  test "updating a User sound" do
    visit user_sounds_url
    click_on "Edit", match: :first

    fill_in "Sound", with: @user_sound.sound_id
    fill_in "User", with: @user_sound.user_id
    click_on "Update User sound"

    assert_text "User sound was successfully updated"
    click_on "Back"
  end

  test "destroying a User sound" do
    visit user_sounds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User sound was successfully destroyed"
  end
end
