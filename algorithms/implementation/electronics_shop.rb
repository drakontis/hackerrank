# https://www.hackerrank.com/challenges/electronics-shop/problem

#!/bin/ruby

def find_best_match(keyboards, drives, s)
  best_difference = s

  keyboards_index = 0
  drives_index = 0

  while keyboards_index <= (keyboards.size - 1) && keyboards[keyboards_index] <= s
    while drives_index <= (drives.size - 1) && ((keyboards[keyboards_index] + drives[drives_index]) <= s)
      sum_of_objects = keyboards[keyboards_index] + drives[drives_index]

      if (s - sum_of_objects) < best_difference
        best_difference = s - sum_of_objects
      end

      drives_index += 1
    end

    keyboards_index += 1
    drives_index = 0
  end

  s - best_difference
end

def getMoneySpent(keyboards, drives, s)
  sorted_keyboards = keyboards.sort
  sorted_drives = drives.sort

  if sorted_drives.first + sorted_keyboards.first > s
    -1
  else
    find_best_match(sorted_keyboards, sorted_drives, s)
  end
end

s,n,m = gets.strip.split(' ')
s = s.to_i
n = n.to_i
m = m.to_i
keyboards = gets.strip
keyboards = keyboards.split(' ').map(&:to_i)
drives = gets.strip
drives = drives.split(' ').map(&:to_i)
#  The maximum amount of money she can spend on a keyboard and USB drive, or -1 if she can't purchase both items
moneySpent = getMoneySpent(keyboards, drives, s)
puts moneySpent
