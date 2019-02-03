require 'pry'

class PigLatinizer 
	attr_reader :text

	def piglatinize(text)
		alpha = ('A'..'Z').to_a + ('a'..'z').to_a
		vowels = %w[a e i o u A E I O U]
		consonants = alpha - vowels

		if text.split.length > 1 
			split_sentence(text)
		elsif
			vowels.include?(text[0])
			text + 'way'
		elsif 
			consonants.include?(text[0]) && consonants.include?(text[1]) && consonants.include?(text[2])
			text[3..-1] + text[0] + text[1] + text[2] + 'ay'
		elsif 
			consonants.include?(text[0]) && consonants.include?(text[1])
			text[2..-1] + text[0] + text[1] + 'ay'
		elsif 
			consonants.include?(text[0])
			text[1..-1] + text[0] + 'ay'
		else 
			text + 'way'
		end
	end

	def split_sentence(text)
		phrase = text.split
		@piglatinized_phrase = []
		phrase.map do |word|
			@piglatinized_phrase << piglatinize(word)
		end
		@piglatinized_phrase.join(' ')
	end

end