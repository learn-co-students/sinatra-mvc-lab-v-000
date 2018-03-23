require 'pry'
class PigLatinizer

  attr_accessor :word, :consonants, :vowels, :phrase


  def initialize
    @word = word
    @phrase = phrase
  end

  def piglatinize(word)

    @consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','x','z','w','y']
    @consonants_caps = ['B','C','D','F','G','H','J','K','L','M','N','P','Q','R','S','T','V','X','Z','W','Y']
    @vowels = ['a', 'e', 'i', 'o', 'u']
    @vowels_caps = ['A', 'E', 'I', 'O', 'U']

    split_word = word.downcase.split("")
    first_letter = split_word[0]
    second_letter = split_word[1]
    third_letter = split_word[2]
      if split_word.include?(" ")
         piglatinize_sentence(word)
      elsif @vowels.include?(first_letter) && split_word.length == 1
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
      elsif @consonants.include?(first_letter) &&
        @consonants.include?(second_letter) &&
        @consonants.include?(third_letter)
        split_word.shift
        split_word.shift
        split_word.shift
        new_word = split_word.push(first_letter).push(second_letter).push(third_letter).join("")
        new_word += "ay"
        return new_word
      elsif @vowels.include?(first_letter) && first_letter == "e"
        new_word = split_word.join("")
        new_word += "way"
        return new_word.capitalize
      elsif @vowels.include?(first_letter) && first_letter != "e"
        new_word = split_word.join("")
        new_word += "way"
        return new_word
      end #if statement
  end #method

  def piglatinize_sentence(sentence)
    @consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','x','z','w','y']
    @consonants_caps = ['B','C','D','F','G','H','J','K','L','M','N','P','Q','R','S','T','V','X','Z','W','Y']
    @vowels = ['a', 'e', 'i', 'o', 'u']
    @vowels_caps = ['A', 'E', 'I', 'O', 'U']

    array = sentence.split(" ")

    pig_latin = []

    array.each_with_index do |word, index|

        if @consonants_caps.include?(word[0]) && word.length == 2
          split_word = word.split("")
          split_word.shift
          new_word = split_word.push(word[0]).push("a", "y").join("")
          pig_latin << new_word
        elsif @vowels.include?(word[0]) && word.length == 1
          new_word = word[0] + "way"
          pig_latin << new_word
        elsif @consonants_caps.include?(word[0]) && word.length == 6
          split_word = word.split("")
          split_word.shift
          split_word.shift
          split_word.shift
          new_word = split_word.push(word[0]).push(word[1]).push(word[2]).push("a", "y").join("")
          pig_latin << new_word
        elsif @consonants_caps.include?(word[0]) && word.length == 4 #TESTING, GULF
          split_word = word.split("")
          split_word.shift
          new_word = split_word.push(word[0]).push("a", "y").join("")
          pig_latin << new_word
        elsif @vowels.include?(word[0]) || @vowels_caps.include?(word[0]) && @consonants.include?(word[1])
          new_word = word + "way"
          pig_latin << new_word
        elsif @consonants.include?(word[0]) && @vowels.include?(word[1])
          split_word = word.split("")
          split_word.shift
          new_word = split_word.push(word[0]).join("") + "ay"
          pig_latin << new_word
        else @consonants.include?(word[0]) && @consonants.include?(word[1]) && @vowels.include?(word[2])
          split_word = word.split("")
          split_word.shift
          split_word.shift
          new_word = split_word.push(word[0]).push(word[1]).join("") + "ay"
          pig_latin << new_word
        end #if statement
    end #each iterator
        return pig_latin.join(" ")
  end #method

  end
