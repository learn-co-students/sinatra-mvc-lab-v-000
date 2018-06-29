require 'pry'

class PigLatinizer
	#credit to github user splith for piglatinizing methods https://github.com/spilth/ubyray/blob/master/lib/ubyray.rb

	def initialize
	end

	def piglatinize(sentence)

	    words = sentence.split(' ')
	    piglatin_words = []

	    words.each do |word|
	      piglatin_words << translate_word(word)
	    end

	    piglatin_words.join(' ')
  	end

  	def translate_word(word)
    	if vowelized?(word)
      		piglatin = "#{word}way"
    	else
	      split_index = first_vowel_index(word)
	      rest = word[0..split_index-1]
	      start = word[split_index..-1]
	      #start.capitalize! if capitalized?(word)
	      piglatin = "#{start}#{rest}ay"
    	end
  	end

  	def first_vowel_index(word)
    	i = 0
    	word.split(//).each do |letter|
      		if vowel?(letter)
        		break
      		end
      		i += 1
    	end
    	i
  	end

  	def letter?(character)
    	('a'..'z').include?(character.downcase)
  	end

  	def vowel?(letter)
    	%w{a e i o u y}.include?(letter.downcase)
  	end

  	def vowelized?(word)
    	vowel? word[0]
  	end

  	def capitalized?(word)
    	word[0].ord < 97
  	end

  	def to_a(sentence)
    	return [""] if sentence == ""
    	pieces = []
  	end
end
