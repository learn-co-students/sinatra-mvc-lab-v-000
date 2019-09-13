
class PigLatinizer

	def piglatinize(word)
		vowel_index = word.index(/[aeiouAEIOU]/)
		letter_array = word.split("")
		counter = 0
		if vowel_index == 0
		    return word + "way"
		else
		    while counter < vowel_index
		        move_letter = letter_array.shift
			letter_array.push(move_letter)
			counter += 1
		    end
		end
		letter_array << "ay"
		letter_array.join("")
	end

	def to_pig_latin(sentence)
	    sentence.split.collect { |word| piglatinize(word) }.join(" ")
	end

end
