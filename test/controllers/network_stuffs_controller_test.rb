require "test_helper"

class NetworkStuffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @network_stuff = network_stuffs(:one)
  end

  test "should get index" do
    get network_stuffs_url
    assert_response :success
  end

  test "should get new" do
    get new_network_stuff_url
    assert_response :success
  end

  test "should create network_stuff" do
    assert_difference("NetworkStuff.count") do
      post network_stuffs_url, params: { network_stuff: { name: @network_stuff.name } }
    end

    assert_redirected_to network_stuff_url(NetworkStuff.last)
  end

  test "should show network_stuff" do
    get network_stuff_url(@network_stuff)
    assert_response :success
  end

  test "should get edit" do
    get edit_network_stuff_url(@network_stuff)
    assert_response :success
  end

  test "should update network_stuff" do
    patch network_stuff_url(@network_stuff), params: { network_stuff: { name: @network_stuff.name } }
    assert_redirected_to network_stuff_url(@network_stuff)
  end

  test "should destroy network_stuff" do
    assert_difference("NetworkStuff.count", -1) do
      delete network_stuff_url(@network_stuff)
    end

    assert_redirected_to network_stuffs_url
  end
end
