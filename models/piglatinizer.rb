class PigLatinizer

  def initialize
  end

  def piglatinize(text)
    special_case = ["a", "an", "in", "on", "and", "i"]
    string = text.gsub(/[\.\,\!\?]/, "")

    if special_case.include?(string)
      string
    elsif string.start_with?("a", "e", "i", "o", "u")
      string << "ay"
    elsif string[1].match(/[aeiou]/)
      first_letter = string.slice!(0)
      string << first_letter + "ay"
    elsif string[1].match(/[bcdfghjklmnpqrstvwxyz]/) && string[2].match(/[bcdfghjklmnpqrstvwxyz]/)
      three_letters = string.slice!(0..2)
      string << three_letters + "ay"
    else
      two_letters = string.slice!(0..1)
      string << two_letters + "ay"
    end
  end

  def to_pig_latin(string)
    words = string.split(" ")
    latinized_words = words.map { |word| piglatinize(word) }
    sentence = latinized_words.join(" ")
  end

end
