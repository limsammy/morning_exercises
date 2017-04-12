require 'pry'

class RPN
  attr_reader :operator, :nums

  def initialize
    @operator = nil
    @nums = []
  end

  def calc(expression)
    expression_collection = expression.split(' ')
    @operator = expression_collection.pop
    expression_collection.each do |val|
      @nums << val.to_i
    end
    evaluate(@operator, @nums)
  end

  def evaluate(operator, collection)
    if @operator == '+'
      @nums.inject(:+)
    elsif @operator == '-'
      @nums.inject(:-)
    end
  end
end