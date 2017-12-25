require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test '/login route opens login page' do
  		get '/login'
  		assert_response :success
  end

  test '/register route opens register page' do
  		get '/register'
  		assert_response :success

  end

  test 'that a profile page works' do
    get '/CHOLO'
    assert_response :success
  end

end
