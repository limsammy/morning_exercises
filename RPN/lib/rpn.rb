require 'pry'

class RPN
  attr_reader :first_val, :second_val, :operator

  def initialize
    @first_val = nil
    @second_val = nil
    @operator = nil
  end

  def calc(expression)
    expression_collection = expression.split(' ')
    @first_val = expression_collection.first.to_i
    @second_val = expression_collection[1].to_i
    @operator = expression_collection.last
    check_operator(@operator)
  end

  def check_operator(operator)
    if @operator == '+'
      first_val + second_val
    elsif @operator == '-'
      first_val - second_val
    end
  end
end