class PigLatinizer

  attr_reader :text

  @@vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

  def initialize(text = nil)
    @text = text
  end

  def piglatinize(sentence)
    #NEEDS TO BE REFACTORED
    new_sentence = []
    sentence.split(" ").each do |word|
      if word.length == 1
        new_word = word + "way"
      elsif @@vowels.include?(word[0]) && word.length > 1
        new_word = word + "way"
      elsif @@vowels.include?(word[1])
        new_word = word[1..-1] + word[0] + "ay"
      elsif @@vowels.include?(word[2])
        new_word = word[2..-1] + word[0..1] + "ay"
      elsif @@vowels.include?(word[3])
        new_word = word[3..-1] + word[0..2] + "ay"
      end
      new_sentence << new_word
  end
  new_sentence.join(" ")
end
end
