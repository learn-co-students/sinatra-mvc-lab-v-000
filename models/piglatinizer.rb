require 'pry'

class PigLatinizer
	attr_reader :text

    def initialize(text = nil)
        if text != nil
            @text = piglatinize(text)
        end
    end

	def piglatinize(text)
    	vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    	words = text.split(' ')
    	result = []
			
            words.each do |x|
                if vowels.include?(x.chars[0])
                    translation = x + 'way'
                    result.push(translation)
                else
                    arr = x.split /([aeiou].*)/
                    translation = arr[1] + arr[0] + 'ay'
                    result.push(translation)
                end
            end
        result.join(' ')
    end
end