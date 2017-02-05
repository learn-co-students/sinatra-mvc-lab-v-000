
class PigLatinizer
	attr_accessor :text
	
	def initialize(text=nil)
		@text
	end

	def piglatinize(word)
		num = 0
		vowels = ["a", "e", "i", "o", "u"]
		if word.length > 1 && !vowels.include?(word[0].downcase)
			word_array = word.split("")
				catch :loop do
					word_array.each_with_index do |letter, index|
				 		if vowels.include?(letter.downcase)
			 				num = index
							throw :loop
						end
			 		end
				end
			word[num..-1] + word[0..num-1] + "ay"
		else
			word + "way"
		end
	end

	def to_pig_latin(phrase)
		words = phrase.split(" ")
		words.collect do |word|
			piglatinize(word)
		end.join(" ")
	end
end