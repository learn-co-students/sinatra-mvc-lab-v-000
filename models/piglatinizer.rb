class PigLatinizer
	attr_accessor :text
	def initialize
		@text = text
	end
	def piglatinize(word)
		if word[0].downcase.match(/[aoiue]/) != nil
			pig_word = word + "way"
		else
			consonants = word.match(/[bcdfghjklmnpqrstvwxyzBCDGHJKLMNPQRSTVWXYZ]{1,}/)[0]
			pig_word = word[consonants.length, word.length] + consonants + "ay"
		end
		pig_word
	end

	def to_pig_latin(text)
		text.split(" ").map{|word| self.piglatinize(word)}.join(" ")
	end
end