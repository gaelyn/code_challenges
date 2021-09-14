# Given a string s, determine if it is a palindrome, considering only alphanumeric
# characters and ignoring cases.
#
#
#
# Example 1:
#
# Input: s = "A man, a plan, a canal: Panama"
# Output: true
# Explanation: "amanaplanacanalpanama" is a palindrome.
#
# Example 2:
#
# Input: s = "race a car"
# Output: false
# Explanation: "raceacar" is not a palindrome.
#
#
# Constraints:
#
# 1 <= s.length <= 2 * 105
# s consists only of printable ASCII characters.

def is_palindrome(s)
  s = s.downcase.delete "^a-z0-9"
  s == s.reverse


end

string1 = "racecar"
#=> true

string2 = "A man, a plan, a canal: Panama"
#=> true

string3 = "race a car"
#=> false

string4 = "0P"
#=> false

string5 = "1b1"
#=> true

p is_palindrome(string1)
p is_palindrome(string2)
p is_palindrome(string3)
p is_palindrome(string4)
p is_palindrome(string5)
