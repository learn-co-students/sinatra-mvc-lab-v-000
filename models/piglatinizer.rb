class PigLatinizer

  def piglatinize(text)
    words = text.split(' ')
    words.map{|word|translate_word(word)}.join(' ')
  end


  def translate_word(text)
    if/^[aeiou]/i.match(text)
      "#{text}way"
        end
    else
      parts = text.split(/([aeiou].*)/)
      "#{parts[1]}#{parts[0]}ay"
  end
end
#   def piglatinize(input_str)
#     x = (input_str.split(" ").length == 1) ? piglatinize_word(input_str) : piglatinize_sentence(input_str)
#     puts x
#     x
#   end
#
#   def piglatinize_sentence(sentence)
#    sentence.split.collect { |word| piglatinize_word(word) }.join(" ")
#  end
#
# end
