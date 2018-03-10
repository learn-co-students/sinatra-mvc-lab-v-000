class PigLatinizer 

	attr_accessor :string 


	def to_pig_latin(string)
		words = string.split(/\W+/)
 		result = []
			words.each do |word| 
				result << piglatinize(word)
			end
		result.join(" ")
	end 


	def piglatinize(word)
		alpha = ('a'..'z').to_a
	    vowels = %w[a e i o u]
	    consonants = alpha - vowels
	        if vowels.include?(word[0].downcase)
	        	result = word + 'way'
	        elsif consonants.include?(word[0].downcase) && consonants.include?(word[1]) && consonants.include?(word[2])
	  			result = word[3..-1] + word[0..2] + 'ay'
	        elsif consonants.include?(word[0].downcase) && consonants.include?(word[1])
	    		result = word[2..-1] + word[0..1] + 'ay'
	  		elsif consonants.include?(word[0].downcase)
	    		result = word[1..-1] + word[0] + 'ay'
	  		end
		result
	end 
		
end


