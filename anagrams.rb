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
  canonical(first_word) == canonical(second_word)
end

def canonical(word)
  word.downcase.split("").sort.join("")
end



# driver code
p is_anagram?("cinema", "iceman") == true
p is_anagram?("Cinema", "iceman") == true
p is_anagram?("person", "pencil") == false
p is_anagram?("cinema", "iceman") == true
p is_anagram?("Cinema", "iceman") == true

p canonical("cinema") == "aceimn"
p canonical("Cinema") == "aceimn"