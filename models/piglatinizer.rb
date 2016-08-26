require 'pry'

class PigLatinizer
  attr_accessor :new_sentence

  def initialize(new_sentence = [])
    @new_sentence = new_sentence
  end

  # def piglatinize(text)
  #   text_array = text.split(" ")
  #   text_array.each do |word|
  #     word_array = word.scan /\w/
  #     if word_array[0].scan(/[aeouiAEIOU]/).count != 0
  #       word_array << "way"
  #       new_word = word_array.join("")
  #       @new_sentence << new_word
  #     else
  #       new_word_array = word_array.shift
  #       word_array << new_word_array
  #       word_array << "ay"
  #       new_word = word_array.join("")
  #       @new_sentence << new_word
  #     end
  #   end
  #   @new_sentence.join(" ")
  # end

  def to_pig_latin(text)
    text_array = text.split(" ")
    text_array.each do |word|
      piglatinize(word)
    end
    @new_sentence.join(" ")
  end

  # word_array.index(/[aeouiAEIOU]/)
  # indexes = []
  # word_array.each do |word|
  #   letter = "" + word.scan(/[aeouiAEIOU]/) + ""
  #   indexes << word_array.index(letter)
  # end
  # indexes

  # word_array.each.with_index do |word, index|
  #   # if word.scan(/[aeouiAEIOU]/) != nil
  #   puts word.scan(/[aeouiAEIOU]/)
  #     # puts index
  #   end
  # end


  def piglatinize(word)
    word_array = word.scan /\w/
    if word_array[0].scan(/[aeouiAEIOU]/).count != 0
      word_array << "way"
      new_word = word_array.join("")
      @new_sentence << new_word
    else
      new_word_array = word_array.shift
      word_array << new_word_array
      word_array << "ay"
      new_word = word_array.join("")
      @new_sentence << new_word
    end
    new_word
  end

end

# sentence = PigLatinizer.new
# sentence.to_pig_latin("your dog is cool")
