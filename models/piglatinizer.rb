require_relative './config/environment'

class Pig_Latinizer 
	attr_reader :string

	def initialize(string)
		@string = string.downcase.chomp
	end 

	def convert(string)
		
	  if string =~ (/\A[aeiou]/i)
	    string = string + 'ay'
	  elsif string =~ (/\A[^aeiou]/i)
	    match_first_letter = /\A[^aeiou]/i.match(string)
	    result = match_first_letter.post_match + match_first_letter.to_s + 'ay'
	  end
	  result
	end

end 

#issue: will need to add one for phrases. 

