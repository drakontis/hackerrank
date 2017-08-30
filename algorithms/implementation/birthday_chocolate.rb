# https://www.hackerrank.com/challenges/the-birthday-bar

#!/bin/ruby

def solve(n, s, d, m)
  number_of_ways = 0

  s.each_with_index do |piece, piece_index|
    pieces_sum = 0

    m.times do |index|
      pieces_sum += s[piece_index + index].to_i
    end

    number_of_ways += 1 if pieces_sum == d
  end

  number_of_ways
end

n = gets.strip.to_i
s = gets.strip
s = s.split(' ').map(&:to_i)
d, m = gets.strip.split(' ')
d = d.to_i
m = m.to_i
result = solve(n, s, d, m)
puts result