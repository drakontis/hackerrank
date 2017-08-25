# https://www.hackerrank.com/challenges/kangaroo

#!/bin/ruby

def kangaroo(x1, v1, x2, v2)
  if v1 <= v2
    result = 'NO'
  else
    loop do
      x1 += v1
      x2 += v2

      if x1 == x2
        result = 'YES'
        break
      elsif x1 > x2
        result = 'NO'
        break
      end

    end
  end

  result
end

x1, v1, x2, v2 = gets.strip.split(' ')
x1 = x1.to_i # First kangaroo's starting position
v1 = v1.to_i # First kangaroo's moving rate
x2 = x2.to_i # Second kangaroo's starting position
v2 = v2.to_i # Second kangaroo's moving rate
result = kangaroo(x1, v1, x2, v2)
puts result