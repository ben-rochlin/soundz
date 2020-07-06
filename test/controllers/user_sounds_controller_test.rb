require 'test_helper'

class UserSoundsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_sound = user_sounds(:one)
  end

  test "should get index" do
    get user_sounds_url
    assert_response :success
  end

  test "should get new" do
    get new_user_sound_url
    assert_response :success
  end

  test "should create user_sound" do
    assert_difference('UserSound.count') do
      post user_sounds_url, params: { user_sound: { sound_id: @user_sound.sound_id, user_id: @user_sound.user_id } }
    end

    assert_redirected_to user_sound_url(UserSound.last)
  end

  test "should show user_sound" do
    get user_sound_url(@user_sound)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_sound_url(@user_sound)
    assert_response :success
  end

  test "should update user_sound" do
    patch user_sound_url(@user_sound), params: { user_sound: { sound_id: @user_sound.sound_id, user_id: @user_sound.user_id } }
    assert_redirected_to user_sound_url(@user_sound)
  end

  test "should destroy user_sound" do
    assert_difference('UserSound.count', -1) do
      delete user_sound_url(@user_sound)
    end

    assert_redirected_to user_sounds_url
  end
end
