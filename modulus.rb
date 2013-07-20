class Modulus
  def self.mod(dividend, divisor)
    quotient = dividend / divisor
    factor = quotient.to_i * divisor
    dividend - factor
  end
end
