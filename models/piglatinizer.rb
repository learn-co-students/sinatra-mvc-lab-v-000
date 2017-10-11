class PigLatinizer

  @@vowels = ["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"]

	def to_pig_latin(string)
		string.split.collect {|word|piglatinize(word)}.join(" ")
	end

	def piglatinize(word)
		return "#{word}way" if @@vowels.include?(word[0])
		word = word.split("")

		until @@vowels.include?(word[0])
			letter = word.shift
			word = word << letter
		end

	"#{word.join}ay"
	end

end
