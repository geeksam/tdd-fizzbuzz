def fizzbuzz_of(n)
  case
  when (n % 3) == 0 && (n % 5) == 0
    'FizzBuzz'
  when (n % 3) == 0
    'Fizz'
  when (n % 5) == 0
    'Buzz'
  else
    n
  end
end
