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

  def test_calc_func_assigns_expression_ints_to_instance_vars
    @rpn.calc('5 6')
    assert_equal 5, @rpn.first_val
    assert_equal 6, @rpn.second_val
  end

  def test_calc_func_assigns_operator_to_instance_var
    @rpn.calc('1 2 +')
    assert_equal '+', @rpn.operator
  end

  def test_calc_func_parses_string_nums_into_fixnums
    @rpn.calc('1 2')
    assert_equal 1, @rpn.first_val
  end

  def test_calc_func_succesfully_calculates_sum
    assert_equal 3, @rpn.calc('1 2 +')
  end

  def test_calc_func_can_find_difference
    assert_equal 2, @rpn.calc('5 3 -')
  end
end