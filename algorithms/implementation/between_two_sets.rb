# https://www.hackerrank.com/challenges/between-two-sets

#!/bin/ruby

def getTotalX(a, b)
  a.sort!
  b.sort!

  number_of_integer_between_sets = 0

  b.last.times do |first_index|
    satisfy_first_rule = false
    satisfy_second_rule = false

    integer_to_check = first_index + 1

    a.each_with_index do |element, index|
      unless (integer_to_check%element).zero?
        break
      end

      if a.size == index + 1
        satisfy_first_rule = true
      end
    end

    b.each_with_index do |element, index|
      unless (element%integer_to_check).zero?
        break
      end

      if b.size == index + 1
        satisfy_second_rule = true
      end
    end

    number_of_integer_between_sets += 1 if satisfy_first_rule && satisfy_second_rule
  end

  number_of_integer_between_sets
end

n, m = gets.strip.split(' ')
n = n.to_i
m = m.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)
b = gets.strip
b = b.split(' ').map(&:to_i)
total = getTotalX(a, b)
puts total