require 'pry'

class PigLatinizer
  attr_reader :text

  def piglatinize(text)
    text.split.map do |word|
      word_by_letter = word.split(//)
      if word_by_letter.first.downcase.match(/[aeiou]/)
        word_by_letter.push("way")
      else
        while !word_by_letter.first.downcase.match(/[aeiou]/)
          word_by_letter = word_by_letter.rotate
        end
        word_by_letter.push("ay")
      end
      word_by_letter.join
    end.join(" ")
  end

end
