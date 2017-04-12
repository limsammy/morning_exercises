require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/rpn'

class RPNTest < Minitest::Test
  def setup
    @rpn = RPN.new
  end

  def test_rpn_object_exists
    assert_instance_of RPN, @rpn
  end

  def test_respond_to_calc_func
    assert_respond_to(@rpn, :calc)
  end

  def test_calc_func_assigns_operator_to_instance_var
    @rpn.calc('1 2 +')
    assert_equal '+', @rpn.operator
  end

  def test_string_nums_are_parsed_into_fixnums_and_added_to_collection
    @rpn.calc('2 3 +')
    assert_instance_of Array, @rpn.nums
    assert_instance_of Fixnum, @rpn.nums.first
    assert_equal 2, @rpn.nums.first
  end

  def test_calc_func_succesfully_calculates_sum_with_two_nums
    assert_equal 3, @rpn.calc('1 2 +')
  end

  def test_calc_func_can_find_difference_with_two_nums
    assert_equal 2, @rpn.calc('5 3 -')
  end

  def test_calc_func_can_find_sum_of_more_than_two_nums
    assert_equal 10, @rpn.calc('2 2 4 2 +')
  end

  def test_calc_func_can_find_difference_of_more_than_two_nums
    assert_equal 2, @rpn.calc('30 10 5 2 1 10 -')
  end
end