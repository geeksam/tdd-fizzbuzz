require File.join(File.dirname(__FILE__), 'fizzbuzz_of')

def assert(condition, message)
  raise message unless condition
end

actual = fizzbuzz_of(1)
assert actual == 1, "FAILURE:  expected 1, but got #{actual}"

actual = fizzbuzz_of(2)
assert actual == 2, "FAILURE:  expected 2, but got #{actual}"

actual = fizzbuzz_of(3)
assert actual == 'Fizz', "FAILURE:  expected 'Fizz', but got #{actual}"

actual = fizzbuzz_of(5)
assert actual == 'Buzz', "FAILURE:  expected 'Buzz', but got #{actual}"

actual = fizzbuzz_of(6)
assert actual == 'Fizz', "FAILURE:  expected 'Fizz', but got #{actual}"

actual = fizzbuzz_of(10)
assert actual == 'Buzz', "FAILURE:  expected 'Buzz', but got #{actual}"

actual = fizzbuzz_of(15)
assert actual == 'FizzBuzz', "FAILURE:  expected 'FizzBuzz', but got #{actual}"

puts "SUCCESS"
