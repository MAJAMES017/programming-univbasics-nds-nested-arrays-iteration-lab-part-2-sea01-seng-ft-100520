def find_min_in_nested_arrays(array_of_daily_temperature)
  min_values_results = []
row_index = 0
while row_index < array_of_daily_temperature.count do
  element_index = 0
  longest_string_element = ""
  while element_index < array_of_daily_temperature[row_index].count do

    # Array at row_index
    # Element of the inner array at element_index
    # If the length of the current element is greater than the length of longest_string_element
    # Set longest_string_element to the current element
    if array_of_daily_temperature[row_index][element_index].length > longest_string_element.length
      longest_string_element = array_of_daily_temperature[row_index][element_index]
    end
    element_index += 1
  end

  # We have to check every element in each inner array, so after the loop finishes
  # The current value of longest_string_element is pushed into outer_results
  min_values_results << longest_string_element
  row_index += 1
end

min_values
