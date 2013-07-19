require 'spec_helper'
require './sorted_list.rb'

describe SortedList do
  describe "#result" do
    context "when the array is empty" do
      let(:input) { [] }

      it "returns an empty array" do
        SortedList.new(input).result.should == []
      end
    end

    context "when the input array contains no duplicates" do
      let(:input) { [1,3,45,2223,5] }

      it "returns the array sorted" do
        SortedList.new(input).result.should == input.sort{ |x,y| x <=> y }
      end
    end

    context "when the array contains duplicates" do
      let(:input) {[1,2,2,3]}

      it "returns the array sorted, with duplicates removed" do
        SortedList.new(input).result.should == [1,2,3]
      end
    end
  end
end
