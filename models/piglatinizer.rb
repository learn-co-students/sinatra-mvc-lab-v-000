class PigLatinizer

  def piglatinize(string)
    if !string.include?(" ")
      if string.start_with?(/[aeiouAEIOU]/)
        string = string + "way"
      else
        char = string.match(/[aeiouAEIOU]/)
        i = string.index("#{char}")
        b_chunk = string[0, i]
        e_chunk = string[i..-1]
        new_word = e_chunk + b_chunk + "ay"
        string = new_word
      end
    else
      phrase_array = string.split(" ")
      pl_phrase = ""
      phrase_array.each do |word|
        if word.start_with?(/[aeiouAEIOU]/)
          word = word << "way "
          pl_phrase += word
        else
          char = word.match(/[aeiouAEIOU]/)
          i = word.index("#{char}")
          b_chunk = word[0, i]
          e_chunk = word[i..-1]
          new_word = e_chunk + b_chunk + "ay "
          word = new_word
          pl_phrase += word
        end
      end
      pl_phrase.rstrip
    end
  end

end
