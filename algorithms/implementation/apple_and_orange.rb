# https://www.hackerrank.com/challenges/apple-and-orange

#!/bin/ruby

s,t = gets.strip.split(' ') # house position
s = s.to_i                  # left point of the house
t = t.to_i                  # right point of the house
a,b = gets.strip.split(' ') # position of trees
a = a.to_i                  # position of apple tree (left to the house)
b = b.to_i                  # position of orange tree (right to the house)
m,n = gets.strip.split(' ') # number of fruits
m = m.to_i                  # number of apples
n = n.to_i                  # number of oranges
apple = gets.strip
apple = apple.split(' ').map(&:to_i) # Distances of apples
orange = gets.strip
orange = orange.split(' ').map(&:to_i) # Distances of oranges

apples_to_the_house = 0
oranges_to_the_house = 0

apple.each do |app|
  position_of_fruit = a + app

  if position_of_fruit >= s && position_of_fruit <= t
    apples_to_the_house += 1
  end
end

puts apples_to_the_house

orange.each do |orang|
  position_of_fruit = b + orang

  if position_of_fruit >= s && position_of_fruit <= t
    oranges_to_the_house += 1
  end
end

puts oranges_to_the_house