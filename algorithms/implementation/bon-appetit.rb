# https://www.hackerrank.com/challenges/bon-appetit/problem

#!/bin/ruby

def bonAppetit(n, k, b, ar)
  amount_of_all_items = 0

  ar.each do |elem|
    amount_of_all_items += elem
  end

  amount_to_be_paid_by_anna = (amount_of_all_items - ar[k])/2

  difference = b - amount_to_be_paid_by_anna

  difference.zero? ? 'Bon Appetit' : difference
end

n, k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
b = gets.strip.to_i
result = bonAppetit(n, k, b, ar)
puts result
