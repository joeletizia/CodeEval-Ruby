require 'spec_helper'
require './modulus.rb'

describe Modulus do
  describe "#mod" do
    it "should return the proper remainder" do
      Modulus.mod(6,2).should == 0
      Modulus.mod(5,2).should == 1
      Modulus.mod(15,8).should == 7
      Modulus.mod(21,4).should == 1
    end
  end
end
