require File.join(File.dirname(__FILE__), 'fizzbuzz_of')

def assert(condition, message)
  raise "FAILURE:  " + message unless condition
end

expected = 1
actual = fizzbuzz_of(1)
assert actual == 1, "expected #{expected}, but got #{actual}"

expected = 1
actual = fizzbuzz_of(2)
assert actual == 2, "expected #{expected}, but got #{actual}"

expected = 'Fizz'
actual = fizzbuzz_of(3)
assert actual == 'Fizz', "expected #{expected}, but got #{actual}"

expected = 'Buzz'
actual = fizzbuzz_of(5)
assert actual == 'Buzz', "expected #{expected}, but got #{actual}"

expected = 'Fizz'
actual = fizzbuzz_of(6)
assert actual == 'Fizz', "expected #{expected}, but got #{actual}"

expected = 'Buzz'
actual = fizzbuzz_of(10)
assert actual == 'Buzz', "expected #{expected}, but got #{actual}"

expected = 'FizzBuzz'
actual = fizzbuzz_of(15)
assert actual == 'FizzBuzz', "expected #{expected}, but got #{actual}"

puts "SUCCESS"
