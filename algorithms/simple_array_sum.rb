#!/bin/ruby

def simpleArraySum(n, ar)
    res = 0

    ar.each do |elem|
        res += elem
    end

    res  
end

n = gets.strip.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
result = simpleArraySum(n, ar)
puts result;
