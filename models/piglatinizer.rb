class PigLatinizer

	attr_accessor :user_phrase

	

	def consonant?(character)
		character =~ /\A(?=[^aeiou])(?=[a-z])/i
	end

	
	def piglatinize(text)

		if !consonant?(text[0])
			"#{text}way"

		elsif consonant?(text[0]) && consonant?(text[1])&& consonant?(text[2]) && consonant?(text[3])
			"#{text[4..-1]}#{text[0..3]}ay"

		elsif consonant?(text[0]) && consonant?(text[1]) && consonant?(text[2])
			"#{text[3..-1]}#{text[0..2]}ay"

		elsif consonant?(text[0]) && consonant?(text[1])
			"#{text[2..-1]}#{text[0..1]}ay"

		elsif consonant?(text[0])
			"#{text[1..-1]}#{text[0]}ay"
		end
	end



	def to_pig_latin(sentence)
		sentence.split(" ").collect {|word| piglatinize(word)}.join(" ")    
	end

end




