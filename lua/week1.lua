function is_even(num)
   return (num % 2) == 0
end

function is_prime(num)
   local i = 2
   while i < (num/2) do
      if num % i == 0 then
         return false
      end
      i = i + 1
   end
   return true
end

function print_primes(n)
   local num_primes = 0
   local i = 2
   while num_primes < n do
      if is_prime(i) then
         print(i)
         num_primes = num_primes + 1
      end
      i = i + 1
   end
end

function for_loop(a, b, f)
   while a <= b do
      f()
      a = a + 1
   end
end

function reduce(max, init, f)
   local result = init
   for i = 1, max do
      result = f(result, i)
   end
   return result
end

function factorial(n)
   local mul = function(a, b)
      return a * b
   end
   return reduce(n, 1, mul)
end
