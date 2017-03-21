gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'manual_reverse'

class ManualReverseTest < Minitest::Test
  def test_returns_reversed_string
    reverse = ManualReverse.new
    assert_equal "tset", reverse.go("test")
  end
end