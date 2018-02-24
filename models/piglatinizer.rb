class PigLatinizer

	def initialize

	end

	def piglatinize(word)

		if %w(a e i o u A E I O U).include?(word[0])
			word += "way"
		else
			w = word.split(/([aeiouAEIOU])/).rotate
			w << "ay"
			word = w.join
		end
		word
	end

	def to_pig_latin(string)
		words = string.split(" ")
		words.map {|word|piglatinize(word)}.join(" ")
	end

end