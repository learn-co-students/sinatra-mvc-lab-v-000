require 'pry'
class PigLatinizer
	attr_accessor :text

	def initialize(text = nil)
		@text = text
	end

	def piglatinize(word)
		if word.downcase.start_with?('a','e','i','o','u')
			word << 'ay'
		elsif
			new_word = word.split('')
			until new_word.first.downcase.match(/[aeiou]/) != nil do
				x = new_word.first
				new_word.shift
				new_word << x
			end
			new_word.join('') << 'ay'
		end
	end

	def to_pig_latin(phrase)
		phrase.split(/\s|\./).collect do |word|
			case word.downcase
			when 'a','and','an','i','am','in'
				word
			else
				piglatinize(word)
			end
		end.join(' ')
	end




end


