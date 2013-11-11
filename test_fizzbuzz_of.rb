require File.join(File.dirname(__FILE__), 'fizzbuzz_of')

actual = fizzbuzz_of(1)
raise "FAILURE:  expected 1, but got #{actual}" unless actual == 1
