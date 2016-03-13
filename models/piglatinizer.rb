
class PigLatinizer

	def piglatinize(word)
		word.gsub!(".","")
		if word == "and" || word == "in" || word == "an"
				word == word
		elsif word.length>1
			if word.start_with?('a','e','i','o','u') 
				word<<'ay'
			else
				until word.start_with?('a','e','i','o','u') 
					first_letter = word.slice!(0)
					word << first_letter
				end
				word << 'ay'
			end
		end
	word
	end

	def to_pig_latin(sentence)
		sentence = sentence.split(" ")
		sentence.collect {|word| piglatinize(word)}
		sentence.join(" ")
	end
end