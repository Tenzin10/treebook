require 'test_helper'

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get profiles_show_url, params: {id: users(:tenzin).profile_name}
    assert_response :success
    assert_template 'profiles/show'
  end

  test "should render 404 on profile not found" do
  	get profiles_show_url, params: {id: "doesn't exist"}
  	assert_response :not_found
  end

  test "variables are correctly assigned on successful profile viewing" do
  	get profiles_show_url, params: {id: users(:tenzin).profile_name}
  	assert assigns (:user)
  	assert_not_empty assigns(:statuses)

  end

  test "show only correct user's status" do
  	get profiles_show_url, params: {id: users(:tenzin).profile_name}
  	assigns(:statuses).each do |status|
  		assert_equal users(:tenzin), status.user
  	end
  end

end
