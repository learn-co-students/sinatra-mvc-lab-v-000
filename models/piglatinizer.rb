class PigLatinizer
    
    def translate(str)
        if str.downcase.start_with?("a", "e", "i", "o", "u")
            str << "way"
        else
            o_str = str[0, %w(a e i o u).map{|vowel| "#{str}aeiou".index(vowel)}.min]
            result = "#{str[o_str.length..-1]}#{o_str}ay"

            result
        end
    end

    def piglatinize(str)
		str.split(" ").map{|word| translate(word)}.join(" ")
	end

end
