# Given an array of integers nums sorted in ascending order, find the starting and
# ending position of a given target value.
#
# If target is not found in the array, return [-1, -1].
#
# You must write an algorithm with O(log n) runtime complexity.
#
# Example 1:
#
# Input: nums = [5,7,7,8,8,10], target = 8
# Output: [3,4]
#
# Example 2:
#
# Input: nums = [5,7,7,8,8,10], target = 6
# Output: [-1,-1]
#
# Example 3:
#
# Input: nums = [], target = 0
# Output: [-1,-1]
#
#
# Constraints:
#
# 0 <= nums.length <= 105
# -109 <= nums[i] <= 109
# nums is a non-decreasing array.
# -109 <= target <= 109

#First Solution
# def search_range(nums, target)
  # output = []
  # nums.each_with_index do |num, index|
  #   if num == target
  #     output << index
  #   end
  # end
  # return [-1,-1] if output.empty?
  # output
# end

#Second Solution
def search_range(nums, target)
  return [-1,-1] if nums.empty? || !nums.include?(target)
  output = [*nums.each_with_index]
  all_targets = output.find_all do |tuple|
    tuple[0] == target
  end
  [all_targets.first[1], all_targets.last[1]]
end

nums = [5,7,7,8,8,10]
target = 8
p search_range(nums, target)
