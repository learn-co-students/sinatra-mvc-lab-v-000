class PigLatinizer
  attr_accessor :text

  @@vowels = ["a", "e", "i", "o", "u"]

  def initialize(text)
    @text = text
  end

  def init_pig
    text_arr = @text.split(' ')
    translated_words = text_arr.map do |x|
      consonant_checker(x)
    end
    return translated_words.join(' ')
  end

  def consonant_vowel_checker(word)
    word_arr = word.split('')
    word_arr.map! do |x|
      if !@@vowels.include?(x[0]) && @@vowels.include?(x[1])
        x.rotate!(1)
        x << "ay"
      elsif !@@vowels.include?(x[0]) && !@@vowels.include?(x[1])
        x.rotate!(2)
        x << "ay"
      elsif @@vowels.include?(x[0])
        x << "way"
      end
    end
    translated_word = word_arr.join(' ')
    return translated_word
  end
end
