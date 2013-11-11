def fizzbuzz_of(n)
  fizz = (n % 3) == 0
  buzz = (n % 5) == 0
  case
  when fizz && buzz
    'FizzBuzz'
  when fizz
    'Fizz'
  when buzz
    'Buzz'
  else
    n
  end
end
