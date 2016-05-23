# file tc_restaurant.rb

require "./restaurant"
require "test/unit"

class TestRestaurant < Test::Unit::TestCase


	def test_restaurant
		@rest = Restaurant.new("TestRestaurant", "Restaurant for unit testing", "123456789", "Testing 1")
		assert_equal("TestRestaurant", @rest.name)
		assert_equal("Restaurant for unit testing", @rest.descriptiom)
		assert_equal("123456789", @rest.phone)
		assert_equal("Testing 1", @rest.address)		
	end
	
	def test_name_error
		@err = Restaurant.new("", "This restaurant is supposed to create error", "123456789", "Testing 2")
		assert_equal(false, @err.errors.empty?())
	end
	
	def test_desc_error
		@err = Restaurant.new("ErrorRest", "", "123456789", "Testing 2")
		assert_equal(false, @err.errors.empty?())		
	end
	
	def test_phone_error
		@err = Restaurant.new("ErrorRest", "This restaurant is supposed to create error", "", "Testing 2")
		assert_equal(false, @err.errors.empty?())
	end
	
	def test_address_error
		@err = Restaurant.new("ErrorRest", "This restaurant is supposed to create error", "123456789", "")
		assert_equal(false, @err.errors.empty?())
	end

end