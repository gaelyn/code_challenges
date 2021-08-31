# Given an n x n array, write a method that returns the array elements arranged
# from outermost elements to the middle element, traveling clockwise.
#
# A good way to visualize this is to picture the spiral shell of a snail!
#
# Example

# array_matrix = [
#        [1, 2, 3],
#        [4, 5, 6],
#        [7, 8, 9]
#    ]
# snail(array_matrix) #=> [1, 2, 3, 6, 9, 8, 7, 4, 5]

# Assumptions/Questions:
# - only integers? => doesn't matter
# - any duplicates? => also doesn't matter
# - always an odd number of subarrays (in other words, there is always a middle int)
# - array size limit?
# - output is an array of integers
#
# Restate question:
# - given an array of subarrays of integers, return an output array of integers
# that follow a spiral pattern if arrays were stacked on top of each other.
#
# Pseudocode
# - first output should be the values of the first array
# - the next output values will be the last integer of each remaining array
# - then descending index of last array
# - then first int of middle array(s)
# - then array[1] middle int(s)
# - then repeat with array[-2] ints
# - output array.count should be array_matrix.count * subarray.count times

def snail(array_matrix)
  output = []
  until array_matrix.empty? do
    output += array_matrix.shift
    array_matrix.each do |array|
      output << array.pop
    end

    if !array_matrix[-1].nil?
      array_matrix[-1].reverse.each do |int|
        output << int
      end
      array_matrix.pop
    end

    array_matrix.reverse.each do |array|
      output << array.shift
    end
  end
  output.compact
end

array_matrix = [
       [1, 2, 3],
       [4, 5, 6],
       [7, 8, 9]
    ]
p snail(array_matrix)

matrix = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
p snail(matrix) #=> Output: [1,2,3,4,8,12,11,10,9,5,6,7]
