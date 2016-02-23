class PigLatinizer 
	attr_accessor :word, :statment

	def piglatinize(word)
		reject = ['a','i','an','and','in']
		if reject.include?(word)
			word
		else
			word.partition(/[aeio]|(?<!q)u/i).rotate.push("ay").join()
		end
  end


	def to_pig_latin(statment)
		new_statement = statment.split(" ").map do |word|
			piglatinize(word)
		end
		new_statement.join(" ").delete(',' + '.')
	end 


end