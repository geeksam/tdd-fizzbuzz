##### TEST HELPERS #####

def assert(condition, message)
  raise "FAILURE:  " + message unless condition
end

def assert_equal expected, actual
  assert expected == actual, "expected #{expected}, but got #{actual}"
end

def test(&block)
  @tests << block
end

def run_test
  yield
  print '.'; STDOUT.flush
rescue => e
  @failures << e
end

@tests = []
@failures = []

##### TESTS #####

require File.join(File.dirname(__FILE__), 'fizzbuzz_of')

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

##### RUNNING TESTS #####

@tests.each do |test_block|
  run_test &test_block
end

##### SUMMARIZING #####

puts "\n\n"
if @failures.empty?
  puts "SUCCESS"
else
  @failures.each do |failure|
    puts failure.message
    puts failure.backtrace.join("\n")
    puts ''
  end
end
