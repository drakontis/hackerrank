# https://www.hackerrank.com/challenges/ctci-ransom-note/problem

#!/bin/ruby

def check_words_availability(magazine, ransom)
  all_words_available = true

  ransom.each do |ransom_element|
    magazine.each_with_index do |magazine_element, magazine_index|
      if ransom_element != magazine_element
        all_words_available = false
      else
        magazine.delete_at(magazine_index)
        all_words_available = true
        break
      end
    end

    break unless all_words_available
  end

  all_words_available
end

m,n = gets.strip.split(' ')
m = m.to_i
n = n.to_i
magazine = gets.strip
magazine = magazine.split(' ').sort
ransom = gets.strip
ransom = ransom.split(' ').sort

puts check_words_availability(magazine, ransom) ? 'Yes' : 'No'
