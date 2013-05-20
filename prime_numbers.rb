module PrimeNumbers
  @@primes = [2,3,5,7,11]

  def self.prime? n
    return true if @@primes.include? n

    i = 2
    while i < Math.sqrt(n).to_i + 1
      return false if n%i == 0
      i += 1
    end

    @@primes.push n
    true
  end

  def self.primes_less_than_n n
    ret = [] + @@primes.select {|x| x < n}
    i = ret.max + 2
    while i < n
      ret.push i if prime? i
      i += 2
    end

    ret.sort{|x,y| x <=> y}
  end

  private

    def self.max_known_prime
      @@primes.max
    end

end

# File.open(ARGV[0]).each_line do |line|
#    puts PrimeNumbers.primes_less_than_n(line.to_i).join ","
# end