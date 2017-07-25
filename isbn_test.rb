require "minitest/autorun"
require_relative "isbn.rb"

class TestIsbn < Minitest::Test

	def test_assert_that_1_equals_1
		assert_equal(1, 1)
	end

	# def test_assert_that_result_equals_array
	# 	assert_equal(Array, check_that_nbr_array().class)
	# end

	def test_assert_that_string_is_ten_length
		isbn_array = "1234567890"
		assert_equal(true, string_length?(isbn_array))
	end

	def test_for_string_length_false
		isbn_array = "123456789110"
		assert_equal(false, string_length?(isbn_array))
	end

	def test_assert_that_array_length
		isbn_array = "1234567890"
		assert_equal(10, get_isbn(isbn_array))
	end	

	def test_for_isbn_invalidity 
 		isbn_number = "1234567890" 
 		assert_equal(false, figure_validity(isbn_number)) 
 	end 
 
 	def test_for_isbn_validity 
 		isbn_number = "8711075597" 
 		assert_equal(true, figure_validity(isbn_number)) 
 	end 
end

