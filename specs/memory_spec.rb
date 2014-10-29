require 'rspec'

describe 'Memory' do

  it ' should return zero if I have not save a number ' do
    memory = Memory.new
    memory.number.should == 0
  end
end