class PigLatinizer 

	def translate(word)
		if word.downcase.start_with?("a", "e", "i", "o", "u") 
			word << "way"
		else			
	  	prefix = word[0, %w(a e i o u).map{|vowel| "#{word}aeiou".index(vowel)}.min]
	  	result = "#{word[prefix.length..-1]}#{prefix}ay"
	  
	  	result
	  end
	end

	def piglatinize(str)
		str.split(" ").map{|word| translate(word)}.join(" ") 
	end
end 

# test1 = PigLatinizer.new.latinize("Once upon a time and a very good time it was there was a moocow coming down along the road and this moocow that was coming down along the road met a nice little boy named baby tuckoo")
# puts test1

# test2 = PigLatinizer.new.latinize("He was an old man who fished alone in a skiff in the Gulf Stream and he had gone eighty four days now without taking a fish")
# puts test2

# test3 = PigLatinizer.new.latinize("Once")
# puts test3 