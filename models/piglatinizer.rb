require 'pry'

class PigLatinizer

	def piglatinize(word)

		#What do I need to do?

		#handle each word through piglatinize method
		#break up a word into letters
		#put first letter at the end
		#add -ay to the end of that
		#drop vowels from front
		
    ignore = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]
	
	if word.length > 1 && !ignore.include?(word)
		if word[0].match(/[aeiou]/)
			word + "ay"
		else
			split = word.index(/[aeiou]/)
			word[split..-1] + word[0..split-1] + "ay"
		end
	else
		word
		end
	end

	def to_pig_latin(input)
		words = input.to_s.gsub(/[^a-zA-z ]/, '').split(" ")
		words.collect {|word| piglatinize(word)}.join(" ")
	end


end
