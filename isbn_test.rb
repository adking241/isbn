require "minitest/autorun"
require_relative "isbn.rb"

class TestIsbn < Minitest::Test

	def test_assert_that_1_equals_1
		assert_equal(1, 1)
	end

	def test_assert_that_result_equals_array
		assert_equal([], check_that_nbr_array())
	end
end
