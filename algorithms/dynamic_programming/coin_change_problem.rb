# https://www.hackerrank.com/challenges/coin-change

#!/bin/ruby

def find_way(value_to_change, list_of_coins, coin)
  division_result = value_to_change/coin
  division_remainder = value_to_change%coin

  division_result.times do |index|
    difference_to_cover = index * coin

    find_way()
  end
end

def getWays(n, c)
  c.sort!
  possible_ways = []

  c.each do |elem|
    break if elem > c

    possible_ways << find_way(n, c, elem)
  end
end

n, m = gets.strip.split(' ')
n = n.to_i # The value to make change
m = m.to_i # Number of coin types
c = gets.strip
c = c.split(' ').map(&:to_i) # The list o coin types
# Print the number of ways of making change for 'n' units using coins having the values given by 'c'
ways = getWays(n, c)