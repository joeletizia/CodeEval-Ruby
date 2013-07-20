require 'spec_helper'
require './happy_number.rb'

describe HappyNumberChecker do
  describe "#check" do
    it "returns true for a happy number" do
      HappyNumberChecker.check(19).should be_true
    end

    it "returns false for an unhappy number" do
      HappyNumberChecker.check(3).should be_false
    end
  end
end
