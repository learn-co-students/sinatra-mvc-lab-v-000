require 'pry'
class PigLatinizer
  attr_reader :text

  def piglatinize(text)
    pig = []
    words = text.split(" ")
      words.each do |wording|
        word = wording.split("")
        answer_word = wording.split("")
        i = 0
        word.each do |letter|

          if letter.downcase.scan(/[aeoui]/).length == 0
            answer_word << letter
            answer_word.shift
            i += 1
          elsif letter.downcase.scan(/[aeoui]/).length == 1 && i == 0
            answer_word << "way"
            pig << answer_word.join("")
            break
          else
            answer_word << "ay"
            pig << answer_word.join("")
            break
          end
        end
      end
      pig.join(" ")
  end

end
