require 'spec_helper'
require './binary_rep.rb'

describe Binary do
  describe '#convert' do
    it 'should return the correct value for an integer' do 
      Binary.convert(2).should == "10"
      Binary.convert(10).should == "1010"
      Binary.convert(67).should == "1000011"
      Binary.convert(234234).should == "111001001011111010"
    end
  end
end
