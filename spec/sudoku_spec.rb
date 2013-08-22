require 'spec_helper'
require './sudoku.rb'

describe Sudoku do
  let(:sudoku) { Sudoku.new(row_length, puzzle) }

  it "raises an exception when the row length is not 4 or 9" do
    expect{Sudoku.new(3, double)}.to raise_error(Exception)
  end

  context "for a valid puzzle" do
    let(:row_length) { 4 }
    let(:puzzle) { [1,4,2,3,2,3,1,4,4,2,3,1,3,1,4,2] }

    it "should return true" do
      sudoku.valid?.should be_true
    end
  end

  context "for an invalid puzzle" do
    let(:row_length) { 4 }
    let(:puzzle) { [1,4,2,3,2,3,1,3,4,2,3,1,4,1,4,2] }

    it "should return false" do
      sudoku.valid?.should be_false
    end
  end
end
