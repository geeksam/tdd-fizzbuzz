require File.join(File.dirname(__FILE__), 'fizzbuzz_of')

def assert(condition, message)
  raise "FAILURE:  " + message unless condition
end

def assert_equal expected, actual
  assert expected == actual, "expected #{expected}, but got #{actual}"
end

expected = 1
actual   = fizzbuzz_of(1)
assert_equal expected, actual

expected = 2
actual   = fizzbuzz_of(2)
assert_equal expected, actual

expected = 'Fizz'
actual   = fizzbuzz_of(3)
assert_equal expected, actual

expected = 'Buzz'
actual   = fizzbuzz_of(5)
assert_equal expected, actual

expected = 'Fizz'
actual   = fizzbuzz_of(6)
assert_equal expected, actual

expected = 'Buzz'
actual   = fizzbuzz_of(10)
assert_equal expected, actual

expected = 'FizzBuzz'
actual   = fizzbuzz_of(15)
assert_equal expected, actual

puts "SUCCESS"
