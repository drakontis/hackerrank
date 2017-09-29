# https://www.hackerrank.com/challenges/reduced-string/problem

#!/bin/ruby

def super_reduced_string(s)
  while s.match(/(\w)\1/)
    s.gsub!(/(\w)\1/, '')
  end

  s.empty? ? 'Empty String' : s
end

s = gets.strip
result = super_reduced_string(s)
puts result
