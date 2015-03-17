load 'prime_divisors.rb'

describe PrimeDivisors do

  describe 'should not find prime divisors' do

    it 'should not find prime divisors' do
      array = [[10, 30], [9, 5], [4, 9]]
      count = PrimeDivisors.new(array).count_of_prime_divisors
      expect(count).to eq(0)
    end

    it 'should find two prime divisors' do
      array = [[10, 30], [15, 75], [9, 5], [20, 100]]
      count = PrimeDivisors.new(array).count_of_prime_divisors
      expect(count).to eq(2)
    end

    it 'should not find two prime divisors when pass empty array' do
      array = []
      count = PrimeDivisors.new(array).count_of_prime_divisors
      expect(count).to eq(0)
    end

  end

end