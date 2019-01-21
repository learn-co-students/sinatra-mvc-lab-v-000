class PigLatinizer
	attr_accessor :text, :words

	def vowel_match_first(word)
		if word.match(/^[aeiouAEIOU]/)
			true
		else
			false
		end
	end

	def move_first_letter_to_end(word)
		word[1..-1] + word[0]
	end

	def pig_latin(word)
		if vowel_match_first(word)
			word + 'way'
		else
			while !vowel_match_first(word)
				word = move_first_letter_to_end(word)
			end
			word + 'ay'
		end
	end

	def piglatinize(text)
		words = text.split
		words.collect do |word|
			pig_latin(word)
		end.join(' ')
	end
end