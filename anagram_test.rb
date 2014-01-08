def canonical(string)
  string.downcase.split("").sort!
end

def is_anagram?(word1, word2)
  canonical(word1) == canonical(word2)
end

#-----Version without canonical:-----

# def is_anagram?(word1, word2)
#   return false if word1.length != word2.length
#   word1.downcase!
#   word2.downcase!
#   letters = word1.split("")
#   letters.each { |letter|
#     return false if !word2.include?(letter)
#   }
#   true
# end

#----DRIVERS-----
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
p is_anagram?('abcde2', 'c2abed')  # => true

p is_anagram?('pants', 'turtle') == false
p is_anagram?('123123', 'kjhasd') == false