class PigLatinizer

	def piglatinize(word)
		if word.split("")[0].match(/[aeiouAEIOU]/) == nil
			start = word.match(/\b([^aeiou]{1,})/)
			last = word.match(/[aeiou]+.*/)
			return "#{last}#{start}ay"
		else
		  return "#{word}way"
		end
	end

	def to_pig_latin(string)
		word_init = string.split(" ")
		pig_words = word_init.map do |word|
			piglatinize(word)
		end
		pig_words.join(" ")
	end
end