def canonical(word)
	word.downcase.split("").sort
end

def anagram(word1, word2)
	 canonical(word1) == canonical(word2).sort
end

puts anagram("happy", "ppayh") == true
puts anagram("hhhhqqqtfghkjapp", "hhfqhgthapjqpkhq") == true
