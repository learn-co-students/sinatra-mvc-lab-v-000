require 'pry'
class PigLatinizer

  def piglatinize(text)
    pigged_words = to_pig_latin(text)

  end

  def to_pig_latin(text)
    words = text.split(" ").collect do |word|
      alphabet = ('a'..'z').to_a
      vowels = ["a", "e", "i", "o", "u"]
      consonants = alphabet - vowels

      if vowels.include?(word[0].downcase)
        word + 'way'
      elsif consonants.include?(word[0].downcase) && consonants.include?(word[1].downcase) && consonants.include?(word[2].downcase)
        first, second = word[0..2], word[3..-1]
        second + first + "ay"
      elsif consonants.include?(word[0].downcase) && consonants.include?(word[1].downcase)
        first, second = word[0..1], word[2..-1]
        second + first + "ay"
      elsif consonants.include?(word[0].downcase)
        first, second = word[0], word[1..-1]
        second + first + "ay"
      else
        word
      end
    end

    words.join(" ")
  end

end

# p = PigLatinizer.new
# p.piglatinize("pork")
