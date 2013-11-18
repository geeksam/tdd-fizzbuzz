module FizzBuzzer
  class << self
    def fizzbuzz_of(n)
      values = printers.map { |printer| printer.call(n) }.compact
      return n if values.empty?
      values.join
    end

    private

    def printers
      @printers ||= [
        ->(n) { (n % 3) == 0 ? 'Fizz' : nil },
        ->(n) { (n % 5) == 0 ? 'Buzz' : nil },
      ]
    end
  end
end

