# Given a sorted array of distinct integers and a target value, return the index
# if the target is found. If not, return the index where it would be if it were inserted in order.
#
# You must write an algorithm with O(log n) runtime complexity.
#
#
#
# Example 1:
#
# Input: nums = [1,3,5,6], target = 5
# Output: 2
#
# Example 2:
#
# Input: nums = [1,3,5,6], target = 2
# Output: 1
#
# Example 3:
#
# Input: nums = [1,3,5,6], target = 7
# Output: 4
#
# Example 4:
#
# Input: nums = [1,3,5,6], target = 0
# Output: 0
#
# Example 5:
#
# Input: nums = [1], target = 0
# Output: 0
#
#
# Constraints:
#
# 1 <= nums.length <= 104
# -104 <= nums[i] <= 104
# nums contains distinct values sorted in ascending order.
# -104 <= target <= 104

# FIRST SOLUTION
# def search_insert(nums, target)
#   nums.index(target)
#
#   if nums.index(target).nil?
#     if nums.last > target
#       new_target = nums.find do |num|
#         num > target
#       end
#       nums.index(new_target)
#     else
#       nums.count
#     end
#
#   end
# end

# SECOND SOLUTION
def search_insert(nums, target)
  if !nums.index(target).nil?
    nums.index(target)
  elsif nums.last > target
    new_target = nums.find do |num|
      num > target
    end
    nums.index(new_target)
  else
    nums.count
  end
end

nums = [1,3,5,6]
# nums = [1]
target = 5
# target = 2
# target = 7
# target = 0

p search_insert(nums, target)
