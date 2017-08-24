# https://www.hackerrank.com/challenges/grading

#!/bin/ruby

def solve(grades)
  rounded_grades = []

  grades.each do |grade|
    if grade < 38 || (grade%5).zero? || grade%5 < 3
      rounded_grades << grade
    else
      rounded_grades << (grade/5 + 1) * 5
    end
  end

  rounded_grades
end

n = gets.strip.to_i
grades = Array.new(n)
for grades_i in (0..n-1)
  grades[grades_i] = gets.strip.to_i
end
result = solve(grades)
print result.join("\n")