require File.join(File.dirname(__FILE__), 'fizzbuzz_of')

actual = fizzbuzz_of(1)
raise "FAILURE:  expected 1, but got #{actual}" unless actual == 1

actual = fizzbuzz_of(2)
raise "FAILURE:  expected 2, but got #{actual}" unless actual == 2

