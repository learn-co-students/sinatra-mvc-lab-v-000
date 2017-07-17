class PigLatinizer
	@words_array = []

	def split_into_words_array(phrase)
		@words_array = phrase.split(" ")
	end

	def to_pig_latin(phrase)
		#tests require separate method, but this can be handled in the same method
		piglatinize(phrase)
	end

	def piglatinize(phrase)
		@phrase = phrase
		split_into_words_array(@phrase)
		pig_latinized_word = ""
		pig_latinized_array = []
		@words_array.each do |word|
			if starts_with_vowel?(word)
				pig_latinized_word = word + "way"
			else
				pig_latinized_word = translate_consonant_start(word, number_of_starting_consonants(word)) + "ay"
			end
			pig_latinized_array << pig_latinized_word
		end
		pig_latinized_array.join(' ')
	end

	def starts_with_vowel?(word)
		word.downcase.scan(/\A[aeiou]/).size > 0
	end

	def number_of_starting_consonants(word)
		word.downcase.scan(/\A[bcdfghjklmnpqrstvwxyz]*/).join('').length
	end

	def translate_consonant_start(word, number)
		characters_array = []
		characters_array = word.split('')
		characters_array = characters_array.rotate(number)
		characters_array.join('')
	end
end