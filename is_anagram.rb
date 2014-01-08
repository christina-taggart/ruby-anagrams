def is_anagram?(word1, word2)
  word1_sorted = word1.downcase.chars.sort.join
  word2_sorted = word2.downcase.chars.sort.join
  word1_sorted == word2_sorted
end

# The method should be symmetric, i.e.,
# is_anagram?(word1, word2) == is_anagram?(word2, word1) for any two words
p is_anagram?('cinema', 'iceman') == true # => true
p is_anagram?('iceman', 'cinema')  == true # => true

p # Pedantically, a word is always an anagram of itself.
p # This is called being "reflexive," i.e., is_anagram?(word, word) == true for any word
p is_anagram?('pants', 'pants')   == true  # => true

p # is_anagram? should be case-insensitive
p is_anagram?('CiNemA', 'iceman')  == true # => true

p # Notice: acres, cares, and scare are all anagrams of each other
p is_anagram?('acres', 'cares')   == true  # => true
p is_anagram?('cares', 'scare')  == true   # => true
p is_anagram?('scare', 'acres')  == true   # => true

p # The "words" don't need to be valid English words
p is_anagram?('abcde2', 'c2abed')  == true  # => true

p is_anagram?('pants', 'turtle')  == false # => false
p is_anagram?('123123', 'kjhasd')  == false# => false