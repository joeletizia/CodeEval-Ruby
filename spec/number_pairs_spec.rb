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

    context "with the following set of numbers" do
      let(:numbers) { [2,4,5,6,9,11,15] }
      let(:target) { 20 }

      it "returns the proper pairs" do
        finder.find_pairs.should == [[5,15],[9,11]]
      end
    end
  end
end

describe InputDeconstructor do
  let(:input) { "1,2,3,4;5" }
  let(:set) { [1,2,3,4] }
  let(:sum) { 5 }

  let(:input_deconstructor) { InputDeconstructor.new(input) }

  describe "@set" do
    it "returns an array to be fed into collaborators" do
      input_deconstructor.set.should == set
    end
  end

  describe "@sum" do
    it "returns an integer to be fed into collaborators" do
      input_deconstructor.sum.should == sum
    end
  end
end

describe OutputFormatter do
  let(:output_formatter) { OutputFormatter.new(input) }

  describe "#output" do
    context "for empty output" do
      let(:input) { [] }
      it "returns 'NULL'" do
        output_formatter.format.should == "NULL"
      end
    end
    context "for non-empty output" do
      let(:input) { [[1,2],[3,4]] }
      it "returns a set of pairs in the proper format" do
        output_formatter.format.should == "1,2;3,4"
      end
    end
  end
end
