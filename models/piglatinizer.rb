class PigLatinizer
	def piglatinize(word)
		characters = word.split(//)

		vowel_index = characters.find_index do |e| 
			downcased = e.downcase
			downcased == "a" || downcased == "e" || downcased == "i" || downcased == "o" || downcased == "u"
		end

		if vowel_index > 0 
			shifting_characters = characters.shift(vowel_index)
			characters << shifting_characters
			characters.join << "ay"

		else
			characters.join << "way"
		end
	end

	def to_pig_latin(sentence)
		begin
		all_strings = sentence.split(" ")
		reversed_words = all_strings.map do |word| 
			 piglatinize(word)
		end
		reversed_words.join(" ")

	rescue => e
		binding.pry
	end
	end

end
