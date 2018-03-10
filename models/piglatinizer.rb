require 'pry'
class PigLatinizer
  attr_accessor :text

  @@vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
  @@array = []
  #def initialize(text)
  #  @text = text
  #end

  def piglatinize(text)
    latin(text)
=begin
    text_arr = @text.split(' ')
    if text_arr.length == 1
      to_pig_latin_one(text_arr)
    else
      translated_words = text_arr.map do |x|
        consonant_checker(x)
      end
      return translated_words.join(' ')
    end
=end
  end

  def to_pig_latin(text)
    text_arr = text.split(' ')
    word_arr = text_arr.each do |x|
      @@array << latin(x)
    end
    @@array.join(' ')

  end

  def latin(split_word)
    #translated = []
    if split_word.length > 1
      split_split_word = split_word.split('')
      latin_more_than_one(split_split_word)
      #binding.pry
      #split_word.each do |x|
    elsif @@vowels.include?(split_word)
      split_word + "way"
    end

  end

  def latin_more_than_one(split_split_word)


    if !@@vowels.include?(split_split_word[0]) && @@vowels.include?(split_split_word[1])
      split_split_word.rotate!(1)
      split_split_word << "ay"
    elsif !@@vowels.include?(split_split_word[0]) && !@@vowels.include?(split_split_word[1]) && !@@vowels.include?(split_split_word[2])
      split_split_word.rotate!(3)
      split_split_word << "ay"
    elsif !@@vowels.include?(split_split_word[0]) && !@@vowels.include?(split_split_word[1])
      split_split_word.rotate!(2)
      split_split_word << "ay"
    elsif @@vowels.include?(split_split_word[0])
      split_split_word << "way"
    end

    split_split_word.join('')

  end

end
