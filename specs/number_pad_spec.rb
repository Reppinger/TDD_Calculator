require 'rspec'
require_relative './number_pad'
require_relative './fake_memory'

def enter_operation_for_seven(number_pad)
  number_pad.enter 3
  number_pad.add
  number_pad.enter 4
  number_pad.equals
end

describe 'Number Pad' do
  before do
    @number_pad = NumberPad.new FakeMemory.new
  end

  it 'should allow numbers to be added' do
    result = enter_operation_for_seven(@number_pad)
    result.should == 7
  end

  it 'should return single number from equals' do
    @number_pad.enter 1
    @number_pad.equals.should == 1
  end

  it 'should clear the display' do
    @number_pad.enter 7
    @number_pad.clear
    @number_pad.equals.should == 0
  end

  it 'should allow numbers to be remembered' do
    @number_pad.enter 2
    @number_pad.mem_plus
    @number_pad.clear
    @number_pad.mem_recall
    @number_pad.equals.should == 2
  end

  it 'should allow result to be remembered' do
    enter_operation_for_seven @number_pad
    @number_pad.mem_plus
    @number_pad.clear
    @number_pad.mem_recall
    @number_pad.equals.should == 7
  end

end