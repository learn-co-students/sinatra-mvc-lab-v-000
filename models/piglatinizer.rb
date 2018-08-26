class PigLatinizer
  attr_reader :text

  def initialize
    @text 
  end

  def piglatinize(string)
  words = string.split
  words.collect do |word|
    if vowel?(word[0])
      word += "way"
    else
      until vowel?(word[0]) do
        word = word[1..-1] + word[0]
      end
      word = word + "ay"
    end
  end.join(" ")
end

  def vowel?(chr)
    "aeiouAEIOU".include?(chr)
  end
end
