class PrimeDivisors

  def initialize(array)
    @array = array
  end

  def count_of_prime_divisors
    return 0 if !@array || @array.empty?
    count = 0
    for x,y in @array
      count += 1 if has_same_prime_divisors? x, y
    end
    count
  end

  private

    def gcd(x, y)
      x % y == 0 ? y : gcd(y, x % y)
    end

    def has_same_prime_divisors?(x, y)
      result = [x, y]
      gcd_value = gcd x, y

      while x != 1
        x_gcd = gcd x, gcd_value
        break if x_gcd == 1
        x /= x_gcd
      end

      return false if x != 1

      while y != 1
        y_gcd = gcd y, gcd_value
        break if y_gcd == 1
        y /= y_gcd
      end

      y == 1
    end

end
