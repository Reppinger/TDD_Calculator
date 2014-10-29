class FakeMemory

  def number=(number)
    @number = number
  end

  def number
    @number || 0
  end
end