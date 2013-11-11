require File.join(File.dirname(__FILE__), 'fizzbuzz_of')

def assert(condition, message)
  raise "FAILURE:  " + message unless condition
end

actual = fizzbuzz_of(1)
assert actual == 1, "expected 1, but got #{actual}"

actual = fizzbuzz_of(2)
assert actual == 2, "expected 2, but got #{actual}"

actual = fizzbuzz_of(3)
assert actual == 'Fizz', "expected 'Fizz', but got #{actual}"

actual = fizzbuzz_of(5)
assert actual == 'Buzz', "expected 'Buzz', but got #{actual}"

actual = fizzbuzz_of(6)
assert actual == 'Fizz', "expected 'Fizz', but got #{actual}"

actual = fizzbuzz_of(10)
assert actual == 'Buzz', "expected 'Buzz', but got #{actual}"

actual = fizzbuzz_of(15)
assert actual == 'FizzBuzz', "expected 'FizzBuzz', but got #{actual}"

puts "SUCCESS"
