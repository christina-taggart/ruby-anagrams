def is_anagram?(word1, word2)
  word1_array = word1.split(//)
  word2_array = word1.split(//)
  word1_array == word2_array

end

p is_anagram?('cinema', 'ice git man') == true # => true
p is_anagram?('iceman', 'cinema')  == true # => true