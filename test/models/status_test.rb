require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
test "status should have content" do
	status = Status.new
	assert !status.save
	assert !status.errors[:content].empty?
end 

test "status should have atlest 5 letters"do
	status = Status.new
	status.content = "HOLA"
	assert !status.save
	assert !status.errors[:content].empty?
	
end

test "status should have maximum 1000 letters"do
	status = Status.new
	status.content = "HOLA"
	assert !status.save
	assert !status.errors[:content].empty?
	
end

	test "status should have user id" do
	status = Status.new
	status.content = "Hello"
	assert !status.save
	assert !status.errors[:user_id].empty?	

	end

end
