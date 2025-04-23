require "application_system_test_case"

class NetworkStuffsTest < ApplicationSystemTestCase
  setup do
    @network_stuff = network_stuffs(:one)
  end

  test "visiting the index" do
    visit network_stuffs_url
    assert_selector "h1", text: "Network stuffs"
  end

  test "should create network stuff" do
    visit network_stuffs_url
    click_on "New network stuff"

    fill_in "Name", with: @network_stuff.name
    click_on "Create Network stuff"

    assert_text "Network stuff was successfully created"
    click_on "Back"
  end

  test "should update Network stuff" do
    visit network_stuff_url(@network_stuff)
    click_on "Edit this network stuff", match: :first

    fill_in "Name", with: @network_stuff.name
    click_on "Update Network stuff"

    assert_text "Network stuff was successfully updated"
    click_on "Back"
  end

  test "should destroy Network stuff" do
    visit network_stuff_url(@network_stuff)
    click_on "Destroy this network stuff", match: :first

    assert_text "Network stuff was successfully destroyed"
  end
end
