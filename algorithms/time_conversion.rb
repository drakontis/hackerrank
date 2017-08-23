# https://www.hackerrank.com/challenges/time-conversion

#!/bin/ruby

def timeConversion(s)
  day_period = s.split(//).last(2).join

  time_in_array = s.gsub(day_period, '').split(':')

  if day_period == 'PM'
    if time_in_array[0] != '12'
      time_in_array[0] = "#{time_in_array[0].to_i + 12}"
    end
  else
    if time_in_array[0] == '12'
      time_in_array[0] = "00"
    end
  end

  time_in_array.join(':')
end

s = gets.strip
result = timeConversion(s)
puts result
