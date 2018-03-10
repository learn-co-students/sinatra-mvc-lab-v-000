require 'pry'
class PigLatinizer

  def piglatinize(word)
    vowels = %w(a e i o u)
    first_letter = word[0]
    if vowels.include?(first_letter)
      word << "ay"
    elsif vowels.include?(word[1])
      word.slice!(0)
      word << first_letter << "ay"
    elsif vowels.include?(word[2])
      first_letters = word.slice!(0, 2)
      word << first_letters << "ay"
    else
      first_letters = word.slice!(0, 3)
      word << first_letters << "ay"
    end
  end

  def to_pig_latin(word)
    words = ["i", "in", "a", "an", "and"]
    pig_latin = word.split
    pig_latin.collect do |w|
      if words.include?(w)
        w
      else
        new_word = piglatinize(w)
      end
    end
    pig_latin.join(" ").gsub(".", "")
  end
end
