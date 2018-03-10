
class PigLatinizer
	
	attr_accessor :text
	
	def initialize(text=nil)
		@text = text
	end
	
	def piglatinize(word)
		if word.length > 1  && word != "a" && word != "an" && word != "in" && word != "and"
			array = word.split("")
			array.pop if array[-1] == "."
			until !array[0].match(/[aeiou]/).nil?
				consonant = array.shift
				array << consonant
			end
			array.join + "ay"
		else
		    word
		end
	end
	
	
	def to_pig_latin(sent)
		result = []
		sent.split(" ").each do |x|
			result << self.piglatinize(x)
		end
		result.join(" ")
	end
	
end