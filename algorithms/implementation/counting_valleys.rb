# https://www.hackerrank.com/challenges/counting-valleys/problem

#!/bin/ruby
def count_valleys(steps)
  number_of_valleys = 0
  current_level = 0

  steps.split("").each do |step|
    if step == 'U'
      current_level += 1
    else
      number_of_valleys +=1 if current_level.zero?
      current_level -= 1
    end
  end

  number_of_valleys
end

n = gets.strip.to_i

steps = gets.strip

result = count_valleys(steps)
puts result
