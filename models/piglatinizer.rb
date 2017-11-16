#require_relative './config/environment'

class PigLatinizer 
	attr_reader :string


	def piglatinize(string)
		words = []
		words = string.split(" ")
		if is_more_than_one_word?(words)
			#
			words.map do |w|
				#binding.pry
				change(w)
			end 
			words.join(" ")
		else
			change(string)
		end	
	end 


	def change(word)
		
	  if word =~ (/\A[aeiou]/i)
	    word = word + 'ay'
	  elsif word =~ (/\A[^aeiou]/i)
	
	    match_first_letter = /\A[^aeiou]/i.match(word)
	    @result = match_first_letter.post_match + match_first_letter.to_s + 'ay'

	  end
	 
	end


	def is_more_than_one_word?(string)
	
		if string.size == 1
			false
		else
			true
		end
	end 

end 

#issue: will need to add one for phrases. 

