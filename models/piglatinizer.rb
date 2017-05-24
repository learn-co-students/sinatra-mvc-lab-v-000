class PigLatinizer
	attr_accessor :words


	def piglatinize(word)
		vowels = ["a", "e", "i", "o", "u", "y"]
		if vowels.include?(word[0].downcase)
			word + "way"
		elsif vowels.include?(word[1].downcase)
			array = word.scan(/\w/)
			array << array[0] + "ay"
			array.shift
			array.join
		elsif vowels.include?(word[2].downcase)
			array = word.scan(/\w/)
			array << array[0] + array[1] + "ay"
			array.shift(2)
			array.join
		elsif vowels.include?(word[3].downcase)
			array = word.scan(/\w/)
			array << array[0] + array[1] + array[2] + "ay"
			array.shift(3)
			array.join			
    	end
	end

	def to_pig_latin(phrase)
		phrase.split.collect{|word| piglatinize(word)}.join(" ")
	end
end
