class PigLatinizer
	
	
	def piglatinize(word)
		nogoes = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]
		if word.length > 1 && !nogoes.include?(word)
			if word[0].match(/[aeiou]/)
					word + "ay"
				else
					ind = word.index(/[aeiou]/)
					word[ind..-1] + word[0..ind-1] + "ay"
				end
			else
				word
			end
	end
	
	def to_pig_latin(phrase)
		words = phrase.gsub(/[^a-zA-z ]/, '').split(" ")
		words.collect {|word| piglatinize(word)}.join(" ")
	end
end