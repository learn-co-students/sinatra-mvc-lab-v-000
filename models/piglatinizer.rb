class PigLatinizer

	@@vowel = /[aeiou]/

	# def initialize(options = nil)
	# 	@text = options[:user_input]
	# end

	def to_pig_latin(text)
		text.split(' ').map do |w|
			piglatinize(w)
		end.join(' ')
	end

	def piglatinize(word)
		if word[0].downcase.match(@@vowel) == nil
			word[word.index(@@vowel)..-1] + word[0..word.index(@@vowel)-1] + 'ay'	
		else 
			word + 'way'
		end
	end

end
