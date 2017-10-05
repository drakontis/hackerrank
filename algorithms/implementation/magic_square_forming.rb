# https://www.hackerrank.com/challenges/magic-square-forming/problem

#!/bin/ruby

s = Array.new(3)
for s_i in (0..3-1)
  s_t = gets.strip
  s[s_i] = s_t.split(' ').map(&:to_i)
end

possible_magic_arrays = [[[8, 1, 6], [3, 5, 7], [4, 9, 2]],
                         [[6, 1, 8], [7, 5, 3], [2, 9, 4]],
                         [[4, 9, 2], [3, 5, 7], [8, 1, 6]],
                         [[2, 9, 4], [7, 5, 3], [6, 1, 8]],
                         [[8, 3, 4], [1, 5, 9], [6, 7, 2]],
                         [[4, 3, 8], [9, 5, 1], [2, 7, 6]],
                         [[6, 7, 2], [1, 5, 9], [8, 3, 4]],
                         [[2, 7, 6], [9, 5, 1], [4, 3, 8]]]

minimum_cost = nil

cost = 0

possible_magic_arrays.each do |possible_magic_array|
  possible_magic_array.each_with_index do |possible_magic_array_row, possible_magic_array_row_index|
    possible_magic_array_row.each_with_index do |possible_magic_array_row_elem, possible_magic_array_row_elem_row|
      cost += (possible_magic_array_row_elem - s[possible_magic_array_row_index][possible_magic_array_row_elem_row]).abs
    end
  end

  if minimum_cost.nil? || minimum_cost > cost
    minimum_cost = cost
  end

  cost = 0
end

puts minimum_cost
