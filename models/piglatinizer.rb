class PigLatinizer

	def piglatinize(word)

	  # if word[0] =~ /[aioeu]/
	  #   #if the word start with vowels [] add "way" to the end of the word. I => Iway
	  # elsif word.match(/[qwrtyplkjhgfdszxcvbnm]{0,2}/)
	  #   #if the word start with two consonants move the two consonants to the end of the word and add "ay"
	  # elsif word.match(/[qwrtyplkjhgfdszxcvbnm]{0,1}[aioeu]{1,2}/)
	  #  	#take the first letter and move to the end plus "ay" pork => ork p ay
	  # end

	   non_pin_latin_words = ["i", "a" "me", "to", "too", "an", "in", "and", "on"]
	   vowels = ["a", "e", "i", "o", "u","A", "E", "I", "O", "U"]

	   if non_pin_latin_words.include?(word)
	   	word << "way"
	   elsif vowels.include? word[0]
	   	 word << "way"
     else 	 
       consonants = ""
     	 while !vowels.include?(word[0])
     	   consonants << word[0]
     	   word = word.split("")[1..-1].join
     	 end
     	 word + consonants + "ay"
	   end
	end
  
  def to_pig_latin(string)
  	string.split.collect{ |word| piglatinize(word)}.join(" ")
  end
   
end