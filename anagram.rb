# Pseudocode ---

# input: word, compare word
#   check to see if first letter in word is in compare word
#   if it is cross that letter out
#   repeat with all letters in word
#   if there is a match for all letters in word and all letters are crossed off
#   in compare word the you got yourself an anagram


def is_anagram?(word, compare_word)
  compare = compare_word.downcase.split("")
  word.downcase.each_char do |letter|
    compare.delete(letter) if compare.include?(letter)
  end
  compare == [] ? true : false
end


# The method should be symmetric, i.e.,
# is_anagram?(word1, word2) == is_anagram?(word2, word1) for any two words
p is_anagram?('cinema', 'iceman') # => true
p is_anagram?('iceman', 'cinema') # => true

# Pedantically, a word is always an anagram of itself.
# This is called being "reflexive," i.e., is_anagram?(word, word) == true for any word
p is_anagram?('pants', 'pants')   # => true

# is_anagram? should be case-insensitive
p is_anagram?('CiNemA', 'iceman') # => true

# Notice: acres, cares, and scare are all anagrams of each other
p is_anagram?('acres', 'cares')   # => true
p is_anagram?('cares', 'scare')   # => true
p is_anagram?('scare', 'acres')   # => true

# The "words" don't need to be valid English words
p is_anagram('abcde2', 'c2abed')  # => true

p is_anagram?('pants', 'turtle')  # => false
p is_anagram?('123123', 'kjhasd') # => false