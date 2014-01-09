def is_anagram?(word1, word2)
  word1_array = []
  word2_array = []
  word1_array = word1.downcase.split('')
  word2_array = word2.downcase.split('')
  return false if word1.length != word2.length
  word1_array.each do |letter|
    if word2_array.include?(letter)
      word1_array.delete(letter)
      word2_array.delete(letter)
      return true
    else
      return false
    end
  end
end

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

p is_anagram?('pants', 'turtle')  # => false
p is_anagram?('123123', 'kjhasd') # => false