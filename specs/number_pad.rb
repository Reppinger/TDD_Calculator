require File.expand_path(File.dirname(__FILE__) + '/memory.rb')
class NumberPad

  def initialize(memory)
    @numbers = Array.new
    @memory = memory
  end

  def enter(number_entered)
    @numbers.push number_entered
    number_entered
  end

  def add
  end

  def equals
    result = sum_numbers
    reset_numbers_stack(result)
  end

  def reset_numbers_stack(result)
    clear
    enter result
  end

  def sum_numbers
    result = 0
    @numbers.each do |number|
      result += number
    end
    result
  end

  def clear
    @numbers.clear
  end

  def mem_plus
    @memory.number = @numbers.last
  end

  def mem_recall
    enter @memory.number
  end

end