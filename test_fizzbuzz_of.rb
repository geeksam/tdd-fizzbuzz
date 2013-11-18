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

def test_fizzbuzz(input, expected_output)
  test do
    actual   = fizzbuzz_of(input)
    assert_equal expected_output, actual
  end
end

def run_test
  sleep 0.5
  yield
  print '.'; STDOUT.flush
rescue => e
  @failures << e
end

@tests = []
@failures = []

##### TESTS #####

require File.join(File.dirname(__FILE__), 'fizzbuzz_of')

test_fizzbuzz 1,  1
test_fizzbuzz 2,  2
test_fizzbuzz 3,  'Fizz'
test_fizzbuzz 4,  4
test_fizzbuzz 5,  'Buzz'
test_fizzbuzz 6,  'Fizz'
test_fizzbuzz 7,  7
test_fizzbuzz 8,  8
test_fizzbuzz 9,  'Fizz'
test_fizzbuzz 10, 'Buzz'
test_fizzbuzz 11,  11
test_fizzbuzz 12,  'Fizz'
test_fizzbuzz 13,  13
test_fizzbuzz 14,  14
test_fizzbuzz 15, 'FizzBuzz'

##### RUNNING TESTS #####

threads = []

@tests.each do |test_block|
  threads << Thread.new do
    run_test &test_block
  end
end

threads.each(&:join)

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
