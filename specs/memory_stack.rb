class MemoryStack

  def initialize
  @numbers = []
  end

  def number=(numberToAdd)
    @numbers.push numberToAdd
  end

  def number
    @numbers.pop
  end
end