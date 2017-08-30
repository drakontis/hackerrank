# https://www.hackerrank.com/challenges/two-characters

#!/bin/ruby

def valid_string?(string)
  !string.match(/(.)\1+/)
end

len = gets.strip.to_i
s = gets.strip

max_string = ''

unique_characters = s.split(//).uniq

if unique_characters.size < 2
  puts 0
else
  unique_characters

  combinations = (0...(unique_characters.size-1)).inject([]) {|pairs,x| pairs += ((x+1)...unique_characters.size).map {|y| [unique_characters[x],unique_characters[y]]}}

  combinations.each do |char_pair|
    new_string = s.gsub(/[^#{char_pair.join('')}]/, '')

    if valid_string?(new_string) && new_string.length > max_string.length
      max_string = new_string
    end
  end

  puts max_string.length
end