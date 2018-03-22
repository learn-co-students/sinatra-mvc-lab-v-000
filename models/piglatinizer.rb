require 'pry'
class PigLatinizer

  attr_accessor :word, :consonants, :vowels


  def initialize
    @word = word
  end

  def piglatinize(word)

    @consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','x','z','w','y']
    @consonants_caps = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','x','z','w','y']
    @vowels = ['a', 'e', 'i', 'o', 'u']
    @vowels_caps = ['a', 'e', 'i', 'o', 'u']

    split_word = word.split("")
    first_letter = split_word[0]
    second_letter = split_word[1]
    third_letter = split_word[2]
      if @vowels.include?(first_letter) && split_word.length == 1
        new_word = first_letter.capitalize + "way"
        return new_word
      elsif @consonants.include?(first_letter) &&
        @vowels.include?(second_letter)
        split_word.shift
        split_word.push(first_letter)
        new_word = split_word.join("")
        new_word += "ay"
        return new_word
      elsif @consonants.include?(first_letter) &&
        @consonants.include?(second_letter) &&
        @vowels.include?(third_letter)
        split_word.shift
        split_word.shift
        new_word = split_word.push(first_letter).push(second_letter).join("")
        new_word += "ay"
        return new_word

      elsif @vowels.include?(first_letter)
        new_word = split_word.join("")
        new_word += "way"
                binding.pry
        return new_word
      end #if statement
  end #method
  end
