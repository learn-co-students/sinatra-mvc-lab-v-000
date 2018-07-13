class PigLatinizer
  attr_accessor :text
  def initialize
    # @text = text
  end

  def piglatinize(text)
    text_split = text.split(' ')
    result = ""
    text_split.each {|word|
      if "aeiouAEIOU".include?(word[0])
        result += "#{word}way "
      else
        i=0
        while !"aeiouAEIOU".include?(word[i])
          i+=1
        end
        result += "#{word[i..-1]+word[0..i-1]}ay "
      end
    }
    result.strip
  end
end
