def is_anagram?(word1, word2)
  # word1_array = word1.split(//)
  # word2_array = word2.split(//)
  # word1_array == word2_array
  word1.downcase.split(//).sort == word2.downcase.split(//).sort
end

p is_anagram?('cinema', 'Iceman') == true # => true
p is_anagram?('iceman', 'cinema')  == true # => true