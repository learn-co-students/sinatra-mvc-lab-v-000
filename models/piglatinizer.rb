class PigLatinizer
  def piglatinize(input_str)
    x = (input_str.split(" ").length == 1) ? piglatinize_word(input_str) : piglatinize_text(input_str)
  end
   private
   def const?(char)
    !char.match(/[aAeEiIoOuU]/)
  end
   def piglatinize_word(word)
    # word starts with vowel
    if !const?(word[0])
      word = word + "w"
    # word starts with 3 consts
    elsif const?(word[0]) && const?(word[1]) && const?(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
    # word starts with 2 consts
    elsif const?(word[0]) && const?(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
    # word starts with 1 const
    else
      word = word.slice(1..-1) + word.slice(0)
    end
    word << "ay"
  end
   def piglatinize_text(text)
    text.split.collect { |word| piglatinize_word(word) }.join(" ")
  end

end
