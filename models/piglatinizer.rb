class PigLatinizer

  attr_accessor :phrase

  def initialize
  end

  def piglatinize(phrase)
    text_split = phrase.split(" ")
    result = []
    text_split.each do |word|
      if "aeiouAEIOU".include?(word[0])
        result << "#{word}way"
      else
        i=0
        while !"aeiouAEIOU".include?(word[i])
          i+=1
        end
        result << "#{word[i..-1]+word[0..i-1]}ay"
      end
    end
    result.join(" ").strip
  end

end
