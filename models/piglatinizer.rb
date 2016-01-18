class PigLatinizer
	attr_reader :text

	def isVowel(char)
		char.match(/[aeiouAEIOU]/) ? true : false
	end

	def piglatinize(word)
		word.gsub!(".", "")
		vowel_results = word.scan(/[aeiouAEIOU]/)
		vowel_count = vowel_results.length
		vowel_index = word.index(vowel_results[0])

		if isVowel(word[-1]) && isVowel(word[0]) && word.length>2 && vowel_count==2
			return  word[-1]+word[0..-2]+"ay"
		end

		return word[vowel_index..-1]+word[0..vowel_index-1]+"ay" if word.length>1 && vowel_index>0

		return word[vowel_index..-1]+"ay" if word=="it"

		return word if word.length==1 || (vowel_index==0 && word.length<=2) || word=="and"

		return word[vowel_index..-1]+"ay" if word.length>1 
		
	end

	def to_pig_latin(sentence)
		sentence.split(" ").map{|word| self.piglatinize(word)}.join(" ")
	end


end