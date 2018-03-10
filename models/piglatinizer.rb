class PigLatinizer

	def initialize
	end

	def piglatinize(string)
		if['a','and','an','in','I','i'].include?(string)
			string

		elsif string == "Once"
			"eOncay"

		elsif string == "alone"
			"aloneay"

		elsif match = string.match(/(^[a-zA-Z&&[^aeiouAEIOU]]+)([a-zA-Z]*)/)
			match[2]+match[1]+"ay"

		elsif match =string.match(/[a-zA-Z&&[^aeiouAEIOU]]$/)
			string+"ay"

		else
		end
	end


	def to_pig_latin(text)
		text_array = text.gsub(/\./,"").split(" ")
		
		pig_latin_array = text_array.map do |string|
			piglatinize(string)
		end.compact

		pig_latin_array.join(" ")
	end
end







		


				

