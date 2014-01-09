# pseudocode
# input: two words, each as a string
# output: true or false

# for each word
# split string into an array of letters
# sort the letters
# check to see if each words' array is equal to the other
# if they are equal, return true
# if not return false

def is_anagram?(first_word, second_word)
  first_word_array = first_word.split("").sort
  second_word_array = second_word.split("").sort
  return true if first_word_array == second_word_array
  return false
end


# driver code
p is_anagram?("cinema", "iceman") == true
p is_anagram?("person", "pencil") == false

# is_anagram?("cinema", "iceman")