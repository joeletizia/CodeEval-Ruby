require 'spec_helper'
require './prime_numbers.rb'

describe PrimeNumbers do 
  describe '#prime?' do
    it 'should return true for a prime number' do
      PrimeNumbers.prime?(5).should be_true
      PrimeNumbers.prime?(7).should be_true
      PrimeNumbers.prime?(97).should be_true
      PrimeNumbers.prime?(29).should be_true
      PrimeNumbers.prime?(17).should be_true
      PrimeNumbers.prime?(19).should be_true
      PrimeNumbers.prime?(23).should be_true
    end

    it 'should return false for a non-prime number' do 
      PrimeNumbers.prime?(44).should be_false
      PrimeNumbers.prime?(3423423222).should be_false
      PrimeNumbers.prime?(21).should be_false
      PrimeNumbers.prime?(25).should be_false
    end
  end

  describe '#primes_less_than_n' do
    it 'should return an array containing primes less than n' do
      PrimeNumbers.primes_less_than_n(15).should == [2,3,5,7,11,13]
      PrimeNumbers.primes_less_than_n(30).should == [2,3,5,7,11,13,17,19,23,29]
    end
  end

end