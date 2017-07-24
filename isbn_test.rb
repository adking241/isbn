require "minitest/autorun"
require_relative "isbn.rb"

class TestIsbn < Minitest::Test

	def test_assert_that_1_equals_1
		assert_equal(1, 1)
	end

	def test_assert_that_result_equals_array
		assert_equal(Array, check_that_nbr_array().class)
	end

	def test_assert_that_array_is_ten_length
		input_num = 0345676542
		assert_equal(10, check_that_nbr_array.length)
	end
end

