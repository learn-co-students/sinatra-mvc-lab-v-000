class PigLatinizer
  @@vowels = ["a","e","i","o","u"]

	def to_pig_latin(phrase)
		@phrase_array = phrase.to_s.split(' ')
		if @phrase_array.size > 1
			@piglatinized = to_pig_latin_words(@phrase_array)
		elsif
			@phrase_array.size == 1
			@piglatinized = piglatinize(@phrase_array[0])
		else
			@piglatinized = "No phrase was entered!"
		end
	end

	def piglatinize(word)
    @pig_latin_word = ""
		if @@vowels.include?(word[0].downcase) # first character is a vowel
			@pig_latin_word+= word + "way"
		elsif !@@vowels.include?(word[0].downcase) && @@vowels.include?(word[1].downcase) # second character is a vowel
      @pig_latin_word+= word[1..word.size - 1] +  word[0] + "ay"
		else
			ind = word.downcase.index(/[aeiou]/)
			@pig_latin_word+= word[ind..word.size - 1] +  word[0..ind - 1] + "ay" # word begins with a consonant cluster
		end
	end

	def to_pig_latin_words(words_array)
      @pig_latin_words = ""
      words_array.each do |word|
      @pig_latin_words+= piglatinize(word) + " "
    end
      @pig_latin_words.chomp(" ")
	end

end
