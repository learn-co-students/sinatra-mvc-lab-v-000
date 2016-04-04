require 'pry'

class PigLatinizer

	def piglatinize(word)

		first_letter = word.slice(0)
		second_letter = word.slice(1)
		third_letter = word.slice(2)

		if ['a','e','i','o','u','A','E','I','O','U'].include? first_letter #if first letter is a vowel
			word + "way"
		elsif ['a','e','i','o','u'].include? second_letter #if second letter is a vowel
			first_consonant = word.slice!(0)
			word + first_consonant + "ay"
		elsif ['a','e','i','o','u'].include? third_letter #if third letter is a vowel
			two_consonants = word.slice!(0..1)
			word + two_consonants + "ay"
		else			
			three_consonants = word.slice!(0..2)
			word + three_consonants + "ay"
		end
	end

	def to_pig_latin(sentence)
		words = sentence.split(" ")
		words.map! do |word|
			piglatinize(word)
		end
		words.join(" ")
	end

end
