require 'rspec'
require_relative './memory_stack'

describe 'Memory Stack' do
  before do
    @memory_stack = MemoryStack.new
  end

  it 'should allow me to store and recall one number' do
    @memory_stack.number = 5
    @memory_stack.number.should == 5
  end

  it 'should allow me to store and recall two numbers' do
    @memory_stack.number = 5
    @memory_stack.number = 6
    @memory_stack.number.should == 6
    @memory_stack.number.should == 5
  end

end