require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "a user should enter a first name" do
  	user = User.new
  	assert !user.save 
  	assert !user.errors[:first_name].empty?
	end

	test "a user should enter a last_name" do
  	user = User.new
  	assert !user.save 
  	assert !user.errors[:last_name].empty?
	end

	test "a user should enter a profile_name" do
  	user = User.new
  	assert !user.save 
  	assert !user.errors[:profile_name].empty?
	end

	test "a user should have unique profile_name" do
		user = User.new
		user.profile_name = "CHOLO"
		user.first_name = "tenzin"
		user.last_name = "cholo"
		user.email = "something@somwwhere.com"
		user.password = "password"
		assert !user.save
		puts user.errors.inspect 
		assert !user.errors[:profile_name].empty?
	end

	test "a user should have profile name without spaces" do
		user = User.new
		user.profile_name = "I was thinking about choolo"
		assert !user.save
		assert !user.errors[:profile_name].empty?
		assert user.errors[:profile_name].include?("must be formatted correctly.")
	end
end
