class PigLatinizer
  # attr_reader :text
  def initialize
    # @text = text.downcase
  end

  def piglatinize(text)
    if !text.match(/\A[aeiouAEIOU]/)
      word_split = text.split("")
      while !word_split[0].match(/\A[aeiouAEIOU]/)
          w =  word_split.shift
          word_split << w
      end
      word_split << "ay"
      word_split.join("")  
    elsif text.match(/\A[aeiouAEIOU]/)  
       word_split = text.split("")
       word_split << "way"
       word_split.join("")  
    end
  end

  def to_pig_latin(str)
   t = str.split
    t.map do |word|
      piglatinize(word)
    end.join(" ")

  end
end  

