class PigLatinizer

  VOWELS = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

	def to_pig_latin(words)
		words.split.collect {|word|piglatinize(word)}.join(" ")
	end

	def piglatinize(word)
		return "#{word}way" if VOWELS.include?(word[0])
		word = word.split("")

		until VOWELS.include?(word[0])
			letter = word.shift
			word = word << letter
		end

	"#{word.join}ay"
	end



end
