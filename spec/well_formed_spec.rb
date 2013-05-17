require 'spec_helper'
require './well_formed.rb'

describe WellFormed do
  describe '#check' do
    it 'should return true for well formed strings' do 
      WellFormed.check("()").should == "True"
      WellFormed.check("").should == "True"
      WellFormed.check("()[]{}").should == "True"
      WellFormed.check("(((({{[]}}))))").should == "True"
    end
    it 'should return false for poorly formed strings' do 
      WellFormed.check("([)]").should == "False"
      WellFormed.check("(((").should == "False"
      WellFormed.check("((()))]").should == "False"
      WellFormed.check("([{})]").should == "False"
      WellFormed.check("([)]").should == "False"
      WellFormed.check("(({(})))").should == "False"
    end
  end
end
