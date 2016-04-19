class FizzBuzz
  def self.generate
    sequence = []

    1.upto(100).each do |number|
      if (number % 15).zero?
        sequence << 'FizzBuzz'
      elsif (number % 5).zero?
        sequence << 'Buzz'
      elsif (number % 3).zero?
        sequence << 'Fizz'
      else
        sequence << number
      end
    end

    sequence.join(',')
  end

  private_class_method :new
end
