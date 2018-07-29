require 'pry'

class PigLatinizer
  attr_reader :text

  def vowel?(char)
    char.match(/[aeiou]/)
  end

  def piglatinize(text)
    text.split.map do |word|
      word_by_letter = word.split(//)

      if vowel?(word_by_letter.first.downcase)
        word_by_letter.push("way")
      else
        while !vowel?(word_by_letter.first.downcase)
          word_by_letter = word_by_letter.rotate
        end
        word_by_letter.push("ay")
      end

      word_by_letter.join
    end.join(" ")
  end
end
