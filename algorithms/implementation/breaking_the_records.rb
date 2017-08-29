# https://www.hackerrank.com/challenges/breaking-best-and-worst-records

#!/bin/ruby

def getRecord(s)
  best_record = s[0]
  worst_record = s[0]
  times_breaking_the_best_record = 0
  times_breaking_the_worst_record = 0

  s.each do |elem|
    if elem > best_record
      times_breaking_the_best_record += 1
      best_record = elem
    elsif elem < worst_record
      times_breaking_the_worst_record += 1
      worst_record = elem
    end
  end

  [times_breaking_the_best_record, times_breaking_the_worst_record]
end

n = gets.strip.to_i
s = gets.strip
s = s.split(' ').map(&:to_i)
result = getRecord(s)
print result.join(" ")
