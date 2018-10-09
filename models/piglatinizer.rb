require "pry"
class PigLatinizer
  def piglatinize(phrase)

    words = PigLatinizer.split_string(phrase)
    latinphrase = []
    words.each do |word|
      if word[0].match(/[aeiouAEIOU]/)
        pig_word = word + "way"
      elsif word[0].match(/[^aeiouAEIOU]/) && word[1].match(/[^aeiouAEIOU]/)
        pig_word = word[/[aeiou](.)*/] + word[/\b[^aeiou]*/] + "ay"
        # binding.pry
      elsif word[0].match(/[^aeiouAEIOU]/)
        pig_word = word[1..-1] + word[0] + "ay"
      end
      # latinphrase = latinphrase + pig_word
      latinphrase << pig_word
    end
    latinphrase.join(" ")
  end

  def self.split_string(phrase)
    new_phrases = phrase.split(' ')
  end
end
