class PigLatinizer

	def piglatinize(word)
		num_constants = word.index(/[aeiou]/i).to_i
		if(num_constants < 1)
			return word+"way"
		else
			return word.slice(num_constants..word.length) + word.slice(0,num_constants) + "ay"
		end
	end

	def to_pig_latin(sentence)
		sentence.split(" ").collect { |word| piglatinize(word)}.join(" ")
	end
	
end