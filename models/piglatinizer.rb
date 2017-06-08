

  class PigLatinizer





  def piglatinize(word)
    vowels = %w[a e i o u A E I O U]
    if vowels.include?(word[0])
  		word << "way"
    else
  		first_letter = ""
 		while !vowels.include?(word[0])
 			first_letter << word[0]

 			word = word.split("")[1..-1].join
 		end
 		word + first_letter + "ay"
  	end
  end

  def to_pig_latin(string)
 		string.split.collect {|word| piglatinize(word)}.join(" ")
 	end

end
