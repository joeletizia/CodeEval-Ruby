require 'spec_helper'
require './number_pairs.rb'

describe NumberPairsFinder do
  let(:numbers) { [1,2,3,4,6] }
  let(:target) { 5 }

  let(:finder) { NumberPairsFinder.new(numbers, target) }

  describe "#find_pairs" do
    it "returns the proper values" do
      finder.find_pairs.should == [[1,4],[2,3]]
    end
  end
end
