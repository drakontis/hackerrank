given_array = [1, 2, 3, [[[4], 5]], 6, [7], [[[8, 9], 10], 11]]

def flatten_array(given_array)
  new_array = []

  given_array.each do |element|
    handle_element(element, new_array)
  end

  new_array
end

def handle_element(element, new_array)
  if element.is_a? Array
    element.each do |array_element|
      handle_element(array_element, new_array)
    end
  else
    new_array << element
  end
end

flatten_array(given_array)
