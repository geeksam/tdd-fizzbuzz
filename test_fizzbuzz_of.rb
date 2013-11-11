require File.join(File.dirname(__FILE__), 'fizzbuzz_of')

actual = fizzbuzz_of(1)
raise "FAILURE:  expected 1, but got #{actual}" unless actual == 1

actual = fizzbuzz_of(2)
raise "FAILURE:  expected 2, but got #{actual}" unless actual == 2

actual = fizzbuzz_of(3)
raise "FAILURE:  expected 'Fizz', but got #{actual}" unless actual == 'Fizz'

actual = fizzbuzz_of(5)
raise "FAILURE:  expected 'Buzz', but got #{actual}" unless actual == 'Buzz'

actual = fizzbuzz_of(6)
raise "FAILURE:  expected 'Fizz', but got #{actual}" unless actual == 'Fizz'

actual = fizzbuzz_of(10)
raise "FAILURE:  expected 'Buzz', but got #{actual}" unless actual == 'Buzz'

actual = fizzbuzz_of(15)
raise "FAILURE:  expected 'FizzBuzz', but got #{actual}" unless actual == 'FizzBuzz'

puts "SUCCESS"
