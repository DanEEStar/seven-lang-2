function triple(num)
   return 3 * num
end

function call_twice(f)
   ff = function(num)
      return f(f(num))
   end

   return ff
end

function reverse(s, t)
   if #s < 1 then return t end
   local first = string.sub(s, 1, 1)
   local rest = string.sub(s, 2, -1)
   return reverse(rest, first .. t)
end

function weapons()
   return 'sword', 'revolver'
end

function popcorn_prices(table)
   print('A medium popcorn costs ' .. table.medium)
end

function hypotenuse(a, b)
   a2 = a * a
   b2 = b * b
   return math.sqrt(a2 + b2)
end
