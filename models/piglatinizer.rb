class PigLatinizer

	def initialize
	end

	def piglatinize(word)
		if /[aeiouAEIOU]/.match(word[0])
			word + "way"
		elsif !/[aeiouAEIOU]/.match(word[0]) && !/[aeiouAEIOU]/.match(word[1]) && !/[aeiouAEIOU]/.match(word[2])
			word[3..word.length-1] + word[0..2] + "ay"
		elsif !/[aeiouAEIOU]/.match(word[0]) && !/[aeiouAEIOU]/.match(word[1])
			word[2..word.length-1] + word[0..1] + "ay"
		else
			word[1..word.length-1] + word[0] + "ay"
		end
	end

	def to_pig_latin(sentence)
		words = sentence.split(" ")
		pig = words.collect {|word| 
			piglatinize(word) }
		pig.join(" ")
	end

end