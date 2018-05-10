class PigLatinizer

  # def initialize
  # end

  def piglatinize(phrase)
    if !phrase.include?(" ")
      piglatinize_word(phrase)
    else
      words = phrase.split(" ")
      words.map! do |w|
        piglatinize_word(w)
      end
      words.join(" ")
    end
  end

  def piglatinize_word(word)
    vowels = "aeiouAEIOU"
      if vowels.include?(word[0])
        word = word + "way"
      else
        word.each_char do |l|
          if !vowels.include?(l)
            word = word[1..-1] + word[0]
          else
            word += "ay"
            break
          end
        end
      end
    word
  end

end
