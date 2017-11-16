# require_relative './config/environment'

class PigLatinizer 
	# attr_reader :string


# 	def piglatinize(string)
# 		words = []
# 		words = string.split(" ")
# 		if is_more_than_one_word?(words)
# 			#
# 			words.map do |w|
# 				#binding.pry
# 				change(w)
# 			end 
# 			words.join(" ")
# 		else
# 			change(string)
# 		end	
# 	end 


# 	def change(word)
		
# 	  if word =~ (/\A[aeiou]/i)
# 	    word = word.split("")[1..-1].join + 'way'
# 	  elsif word =~ (/\A[^aeiou]/i)
	
# 	    match_first_letter = /\A[^aeiou]/i.match(word)
# 	    @result = match_first_letter.post_match + match_first_letter.to_s + 'ay'

# 	  end
	 
# 	end


# 	def is_more_than_one_word?(string)
	
# 		if string.size == 1
# 			false
# 		else
# 			true
# 		end
# 	end
#end  

  def piglatinize(word)

    non_pig_latin_words = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]
    vowels = ["a", "e", "i", "o", "u"]

    if non_pig_latin_words.include?(word)
      word
    elsif vowels.include? word[0]
      word << "ay"
    else
      consonants = ""
      while !vowels.include?(word[0])
        consonants << word[0]
        word = word.split("")[1..-1].join
      end
      word + consonants + 'ay'
    end
  end


  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end 


#issue: will need to add one for phrases. 

