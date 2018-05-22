require 'pry'
class PigLatinizer

  def piglatinize(input_str)
    x = (input_str.split(" ").length == 1) ? piglatinize_word(input_str) : piglatinize_sentence(input_str)
    puts x
    x
  end

private

  def consonant?(char)
    !char.match(/[aAeEiIoOuU]/)
  end

  def piglatinize_word(word)
    # word starts with vowel
    if !consonant?(word[0])
      word = word + "w"
    # word starts with 3 consonants
    elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
    # word starts with 2 consonants
    elsif consonant?(word[0]) && consonant?(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
    # word starts with 1 consonant
    else
      word = word.slice(1..-1) + word.slice(0)
    end
    word << "ay"
  end

  def piglatinize_sentence(sentence)
    sentence.split.collect { |word| piglatinize_word(word) }.join(" ")
  end

end

# NOTE: ALTERNATIVE METHODS
 # CON = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "Y", "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
 # VOW = ["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"]
 #
 #  def pl(text)
 #    if text == "I" || text == "A" || text == "i" || text == "a"
 #      text + "way"
 #    elsif CON.join.include?(text[0]) && CON.join.include?(text[1]) && CON.join.include?(text[2])
 #      x = text.split("")
 #      y = x.first
 #      x.shift
 #      n = x.first
 #      x.shift
 #      z = x.first
 #      x.shift
 #      x.join + y + n + z + "ay"
 #    elsif CON.join.include?(text[0]) && CON.join.include?(text[1])
 #      x = text.split("")
 #      y = x.first
 #      x.shift
 #      n = x.first
 #      x.shift
 #      x.join + y + n + "ay"
 #    elsif VOW.join.include?(text[0])
 #      text + "way"
 #    elsif VOW.join.include?(text[0])
 #      text + "way"
 #    else
 #      x = text.split("")
 #      y = x.first
 #      x.shift
 #      x.join + y + "ay"
 #     end
 #  end
 #
 #  def piglatinize(text)
 #        if ws = text.split(" ")
 #          ws != 1
 #          x = ws.map {|w| pl(w)}.join(" ")
 #        else
 #          ws = text.split(" ")
 #          x = pl(text)
 #        end
 #        x
 #  end
