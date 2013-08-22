require 'spec_helper'
require './number_pairs.rb'

describe NumberPairsFinder do
  describe "#find_pairs" do
    let(:input_set) { [2,4,5,6,9,11,15] }
    let(:result) { [[5,15],[9,11]] }
    let(:sum) { 20 }

    it "should return all pairs matching the sum" do
      pair_finder = NumberPairsFinder.new(input_set, sum)
      pair_finder.find_pairs.should == result
    end
  end
end
