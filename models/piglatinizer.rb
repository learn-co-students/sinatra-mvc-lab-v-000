require 'pry'

class PigLatinizer
  VOWELS = ["a","e","i","o","u"]
  CONSONANT_CLUSTERS = ["bl", "br", "ch", "ck", "cl", "cr", "dr", "fl", "fr", "gh", "gl", "gr", "ng", "ph", "pl", "pr", "qu", "sc", "sh", "sk", "sl", "sm", "sn", "sp", "st", "sw", "th", "tr", "tw", "wh", "wr"]
  MEGA_CONSONANT_CLUSTERS = ["str"]

  def piglatinize(word)
    if word.end_with?("ay")
      return "ay" + word
    elsif word.downcase.start_with?(*VOWELS)
      return word + "way"
    elsif word.downcase.start_with?(*MEGA_CONSONANT_CLUSTERS)
      first_three = word.slice!(0..2)
      return word + first_three + "ay"
    elsif word.downcase.start_with?(*CONSONANT_CLUSTERS)
      first_two = word.slice!(0..1)
      return word + first_two + "ay"
    else
      first_letter = word.slice!(0)
      return word + first_letter + "ay"
    end
  end

  def to_pig_latin(words)
    words_array = words.split(" ")

    new_words_array = words_array.collect do |word|
      piglatinize(word)
    end
    new_words_array.join(" ")
  end

  def self.vowels

  end

end

# PigLatinizer.new.piglatinize("Ridiculous")
