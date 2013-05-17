require 'spec_helper'
require './double_squares.rb'

describe DoubleSquares do
  describe '#check' do
    it 'should return the correct value for an integer' do 
      DoubleSquares.check(25).should == 2
      DoubleSquares.check(10).should == 1
      DoubleSquares.check(5).should == 1
      DoubleSquares.check(20).should == 1
      DoubleSquares.check(1148284322).should == 1
    end
  end

  describe '#perfect_square?' do
    it 'should return true for a good perfect_square' do
      DoubleSquares.perfect_square?(25).should be_true
      DoubleSquares.perfect_square?(26).should be_false
    end
  end
end
