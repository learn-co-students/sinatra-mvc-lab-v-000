require 'pry'

class PigLatinizer

  def to_pig_latin(text)
    if text.include?(" ")
      words = text.split(" ")

      words.map! do |word|
        piglatinize(word)
      end

      pig_latin = words.join(" ")
    else
      word = text.strip
      piglatinize(word)
    end
  end

  def piglatinize(word)
    first_letter = word.chr

    if first_letter.downcase =~ /[aeiou]/
      word.concat("way")

    elsif word[0].downcase =~ /[^aeiou]/ && word[1].downcase =~ /[^aeiou]/ && word[2].downcase =~ /[^aeiou]/
      first_three_letters = word.slice!(0..2)
      word.concat(first_three_letters).concat("ay")

    elsif word[0].downcase =~ /[^aeiou]/ && word[1].downcase =~ /[^aeiou]/
      first_two_letters = word.slice!(0..1)
      word.concat(first_two_letters).concat("ay")

    else
      word.slice!(1..-1).concat(first_letter).concat("ay")
    end
  end
end
