require 'pry'
class PigLatinizer

attr_accessor :user_string

def initialize
end

def piglatinize(user_string)
  @user_string = user_string
  word_array = @user_string.split(" ")
  @new_sentence = []
  #The loop below is painfully ugly. Come back and clean it up.
  word_array.map do |word|
    if word.split("")[0].match(/[aeiouAEIOU]/)
      word = word + "way"
      @new_sentence << word
    elsif word.downcase.split("")[0].match(/[bcdfghjklmnpqrstvwxyz]/) && word.downcase.split("")[1].match(/[bcdfghjklmnpqrstvwxyz]/) && word.split("")[2].match(/[aeiouAEIOU]/)
      word = word.split("")
      first_letter = word[0]
      second_letter = word[1]
      word.shift
      word.shift
      word.join
      word << [first_letter, second_letter, "a", "y"]
      new_word = word.join
      @new_sentence << new_word
    elsif word.downcase.split("")[0].match(/[bcdfghjklmnpqrstvwxyz]/) && word.downcase.split("")[1].match(/[bcdfghjklmnpqrstvwxyz]/) && word.downcase.split("")[2].match(/[bcdfghjklmnpqrstvwxyz]/)
      word = word.split("")
      first_letter = word[0]
      second_letter = word[1]
      third_letter = word[2]
      word.shift
      word.shift
      word.shift
      word.join
      word << [first_letter, second_letter, third_letter, "a", "y"]
      new_word = word.join
      @new_sentence << new_word
    else
      word = word.split("")
      first_letter = word[0]
      word.shift
      word.join
      word << [first_letter, "a", "y"]
      new_word = word.join
      @new_sentence << new_word
    end
    @string_sentence = @new_sentence.join.to_s
  end
  @string_sentence

end

def to_pig_latin(input)
  arr = input.split
  new_sentence = []
  arr.map do |word|
    x = piglatinize(word)
    new_sentence << x
  end
  new_sentence.join(" ").to_s
end

end
