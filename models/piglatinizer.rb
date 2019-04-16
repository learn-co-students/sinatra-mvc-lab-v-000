require 'pry'
class PigLatinizer

	def piglatinize(word)
		vowels = %w[a e i o u A E I O U]
		
		if vowels.include?(word[0])
			word += 'way'
		else 
			word_array = word.split('')
			word_array.each_with_index do |w, i|
				if vowels.include?(w)
					beginning_letters = word_array.slice(i, word_array.length).join('')
					ending_letters = word_array.slice(0, i).join('')
					word = beginning_letters + ending_letters + 'ay'
					break
				end
			end	
		end
		word
	end

	def to_pig_latin(string)
		string.split.collect{|word| piglatinize(word)}.join(" ")
	end
end

