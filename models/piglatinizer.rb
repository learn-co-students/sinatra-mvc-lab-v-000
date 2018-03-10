class PigLatinizer

	def piglatinize(input)
		if input[0].downcase.match(/[aeiou]/)
			input + 'way'
		else
			pig_latin_split = input.partition(/[aeiou]/)
			pig_latin_split[1..-1].join + pig_latin_split[0] + "ay"
		end
	end

	def to_pig_latin(sentence)
		sentence_words = sentence.split.map { |word| word = piglatinize(word) }
		sentence_words.join(" ")
	end

end