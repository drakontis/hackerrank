# https://www.hackerrank.com/challenges/day-of-the-programmer/problem

#!/bin/ruby

def julian_calendar?(year)
  year < 1917
end

def transition_year?(year)
  year == 1918
end

def is_leap_year?(year)
  if julian_calendar?(year)
    (year%4).zero?
  elsif transition_year?(year)
    raise StandardError
  else
    (year%400).zero? || ((year%4).zero? && (year%100) != 0)
  end
end

def solve(year)
  if transition_year?(year)
    '28.09.1918'
  else
    is_leap_year?(year) ? "12.09.#{year}" : "13.09.#{year}"
  end
end

year = gets.strip.to_i
result = solve(year)
puts result
