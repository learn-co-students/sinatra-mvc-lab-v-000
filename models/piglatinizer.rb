class PigLatinizer
  attr_accessor :text

  @@vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

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
    word_arr = word.split('') # ["O", "n", "c", "e"]
    #word_arr.map! do |x|
      if !@@vowels.include?(word_arr[0]) && @@vowels.include?(word_arr[1])
        word_arr.rotate!(1)
        word_arr << "ay"
      elsif !@@vowels.include?(word_arr[0]) && !@@vowels.include?(word_arr[1])
        word_arr.rotate!(2)
        word_arr << "ay"
      elsif @@vowels.include?(word_arr[0])
        word_arr << "way"
      end
    #end
    translated_word = word_arr.join(' ')
    return translated_word
  end
end
