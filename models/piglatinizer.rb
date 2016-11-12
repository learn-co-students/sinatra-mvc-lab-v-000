require 'pry'
class PigLatinizer

	def piglatinize(word)
		alphabet = ('a'..'z').to_a
		vowels = %w[a e i o u]
		consonants = alphabet - vowels
		# binding.pry
		# if a word begins with a vowel, add an ay to the end of the word
		if vowels.include?(word[0])
			word + 'ay'
		# if a word begins with two consonants, move both to the end of the word and add an ay
		elsif consonants.include?(word[0]) && consonants.include?(word[1])
			word[2..-1] + word[0..1] + 'ay'
		# if a word begins with a consonent, move it to the end of the word and then add an ay
		elsif consonants.include?(word[0])
			word[1..-1] + word[0] + 'ay'
		else
			word
		end
	end

end