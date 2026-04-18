require "application_system_test_case"

class FriendsTest < ApplicationSystemTestCase
  setup do
    @friend = friends(:one)
  end

  test "visiting the index" do
    visit friends_url
    assert_selector "h1", text: "Friend List"
  end

  test "should create friend" do
    visit friends_url
    click_on "New Friend"

    fill_in "Email", with: "new_friend@example.com"
    fill_in "First name", with: @friend.first_name
    fill_in "Last name", with: @friend.last_name
    fill_in "Phone", with: @friend.phone
    fill_in "Twitter", with: @friend.twitter
    click_on "Create Friend"

    assert_text "Friend was successfully created"
    click_on "Back"
  end

  test "should update Friend" do
    visit friend_url(@friend)
    click_on "Edit", match: :first

    fill_in "Email", with: "updated_friend@example.com"
    fill_in "First name", with: @friend.first_name
    fill_in "Last name", with: @friend.last_name
    fill_in "Phone", with: @friend.phone
    fill_in "Twitter", with: @friend.twitter
    click_on "Update Friend"

    assert_text "Friend was successfully updated"
    click_on "Back"
  end

  test "should destroy Friend" do
    visit friend_url(@friend)
    accept_confirm do
      click_on "Delete", match: :first
    end

    assert_text "Friend was successfully destroyed"
  end
end
