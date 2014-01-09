def is_anagram?(first_word, second_word)
  alphabetize(first_word) == alphabetize(second_word)
end

def alphabetize(word)
  word.downcase.chars.sort
end

# The method should be symmetric, i.e.,
# is_anagram?(word1, word2) == is_anagram?(word2, word1) for any two words
p is_anagram?('cinema', 'iceman') # => true
p is_anagram?('iceman', 'cinema') # => true

# Pedantically, a word is always an anagram of itself.
# This is called being "reflexive," i.e., is_anagram?(word, word) == true for any word
p is_anagram?('pants', 'pants')   # => true

# p is_anagram? should be case-insensitive
p is_anagram?('CiNemA', 'iceman') # => true

# Notice: acres, cares, and scare are all anagrams of each other
p is_anagram?('acres', 'cares')   # => true
p is_anagram?('cares', 'scare')   # => true
p is_anagram?('scare', 'acres')   # => true

# The "words" don't need to be valid English words
p is_anagram?('abcde2', 'c2abed')  # => true

p is_anagram?('pants', 'turtle') == false  # => false
p is_anagram?('123123', 'kjhasd') == false  # => false
