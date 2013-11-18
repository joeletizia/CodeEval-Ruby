require 'spec_helper'
require './number_pairs.rb'

describe NumberPairsFinder do

  let(:finder) { NumberPairsFinder.new(numbers, target) }

  describe "#find_pairs" do
    context "with the following set of numbers" do
      let(:numbers) { [1,2,3,4,6] }
      let(:target) { 5 }

      it "returns the proper pairs" do
        finder.find_pairs.should == [[1,4],[2,3]]
      end
    end
  end
end
