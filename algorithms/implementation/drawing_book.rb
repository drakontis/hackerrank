# https://www.hackerrank.com/challenges/drawing-book/problem

#!/bin/ruby

def number_from_front(p)
  p/2
end

def number_from_back(n, p)
  if n.even?
    ((n-p)/2.to_f).ceil
  else
    (n-p)/2
  end
end

def solve(n, p)
  number_from_front(p) < number_from_back(n,p) ? number_from_front(p) : number_from_back(n,p)
end

n = gets.strip.to_i
p = gets.strip.to_i
result = solve(n, p)
puts result
