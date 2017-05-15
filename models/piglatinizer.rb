class PigLatinizer

	 def piglatinize(word)	
		
		word_array = word.split("")
		first_letter = word_array[0]
		second_letter = word_array[1]
		third_letter = word_array[2]
		
		
		new_word = ""
		if vowel?(first_letter.downcase)
			new_word = word + "way"
	  	elsif vowel?(second_letter.downcase) && word.size > 1
	  		other_letters = word_array[2..-1].join
	  		new_word = "#{second_letter}#{other_letters}#{first_letter}ay"
	 	elsif vowel?(third_letter.downcase)
	 		other_letters = word_array[2..-1].join

	  		new_word = "#{other_letters}#{first_letter+second_letter}ay"
	  	else
	  		other_letters = word_array[3..-1].join
	  		new_word = "#{other_letters}#{first_letter+second_letter+third_letter}ay"
	 	end
	 end

	def vowel?(letter)
		if letter.scan(/[aeiou]/).count>0
			true
		else
			false
		end
	end

	def to_pig_latin(words)
		words_array = words.split(" ")
		words_array.collect {|word| piglatinize(word)}.join(" ")
	end
end