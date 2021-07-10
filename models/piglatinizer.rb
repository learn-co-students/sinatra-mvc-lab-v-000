class PigLatinizer
  def piglatinize(input_string)
    input_string.split(" ").count > 1 ? piglatinize_sentence(input_string) : piglatinize_word(input_string)
  end

  def piglatinize_word(word)
    if word.match(/\A(a|A|e|E|i|I|o|O|u|U|y|Y)/)
      word = word + "w"
    else
      letter_array = word.split("")
      con = []
      until letter_array.first.match(/\A(a|A|e|E|i|I|o|O|u|U|y|Y)/)
        con << letter_array.shift
      end
      word = letter_array.join("") + con.join("")
    end
    word << "ay"
  end

  def piglatinize_sentence(sentence)
    word_array = sentence.split(" ")
    new_word_array = []
    word_array.each {|word| new_word_array << piglatinize_word(word)}
    new_word_array.join(" ")
  end
end
