class PigLatinizer

    attr_accessor :word

    def initialize
    end

    def piglatinize(sentence)

        words = sentence.split(" ")
        output = []
    
        words.each do |word|
            count = 0
            word.split("").each do |i| 
              if i =~ /[^AEIOUaeiou]/
                  count += 1
              elsif i =~ /[AEIOUaeiou]/
                  if word[0] =~ /[AEIOUaeiou]/
                    output << "#{word}way"
                  elsif word[0..count] =~ /[^AEIOUaeiou]{#{count}}/
                    output << "#{word[count..-1]}#{word[0..count-1]}ay"
                  else
                    output << "#{word[1..-1]}#{word[0]}ay"
                  end
                  count = 0
    
                  break
              end
            end
        end
    
      return output.join(" ")
      
    end

end