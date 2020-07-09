class PigLatinizer

  def piglatinize(input_str)
    input_str.split(" ").length == 1 ? piglatinize_word(input_str) : piglatinize_sentence(input_str)
  end

  private


  def vowel?(char)
    char.match?(/[AaEeIiOoUu]/)
  end


  def pig_latinized_const_count(word)
    # chars = word.split("")
    letters = []
    word.split("").each do |char|
      if !vowel?(char)
       letters.push(char)
      else
        break
      end
    end
    letters.size.to_i
  end


  def piglatinize_sentence(sentence)
    sentence.split.collect { |word| piglatinize_word(word) }.join(" ")
  end


  def piglatinize_word(word)
    sliced_string = word.slice(pig_latinized_const_count(word), word.length - 1)
    const_string = word.slice(0, pig_latinized_const_count(word))
    pig_latin_word = ""

    if vowel?(word[0])
      pig_latin_word = word + "way"
    else
      pig_latin_word = sliced_string + const_string + "ay"
    end
    pig_latin_word
  end


end
