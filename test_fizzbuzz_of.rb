require File.join(File.dirname(__FILE__), 'fizzbuzz_of')

def assert(condition, message)
  raise "FAILURE:  " + message unless condition
end

def assert_equal expected, actual
  assert expected == actual, "expected #{expected}, but got #{actual}"
end

def test
  yield
end

test do
  expected = 1
  actual   = fizzbuzz_of(1)
  assert_equal expected, actual
end

test do
  expected = 2
  actual   = fizzbuzz_of(2)
  assert_equal expected, actual
end

test do
  expected = 'Fizz'
  actual   = fizzbuzz_of(3)
  assert_equal expected, actual
end

test do
  expected = 'Buzz'
  actual   = fizzbuzz_of(5)
  assert_equal expected, actual
end

test do
  expected = 'Fizz'
  actual   = fizzbuzz_of(6)
  assert_equal expected, actual
end

test do
  expected = 'Buzz'
  actual   = fizzbuzz_of(10)
  assert_equal expected, actual
end

test do
  expected = 'FizzBuzz'
  actual   = fizzbuzz_of(15)
  assert_equal expected, actual
end

puts "SUCCESS"
