class PigLatinizer
  
  attr_accessor :text, :pgWords
  
  def piglatinize(str)
    @pgWords = []
    words = str.split(" ")
    words.each {|word| @pgWords.push(transform(word))}
    @pgWords.join(" ")
  end
  
  def transform(str)
    splitIndex = vowelIndex(str)
    if splitIndex == -1
      return str + "way"
    else
      return str[splitIndex..str.size] + str[0..splitIndex-1] + "ay"
    end
  end
  
  def vowelIndex(str)
    index = -1
    if vowel?(str[0])
      return index
    end
    str.chars.each_with_index do |char, index|
      if vowel?(char)
        return index
      end
    end
  end
  
  def vowel?(character)
    if /[aeiou]/.match(character.downcase)
      return true
    else
      return false
    end
  end
  
end

pg = PigLatinizer.new
str = pg.piglatinize("pork")
puts str
