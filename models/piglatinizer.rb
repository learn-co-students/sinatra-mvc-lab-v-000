class PigLatinizer
  def initialize
  end

  def piglatinize(word)
    if starts_with_vowel?(word)
      processed_word = word + "way"
    elsif special_case?(word.downcase)
      if word[0] == "w"
        processed_word = word.split(//)
        2.times do processed_word.shift
        end
        if upcase?(word)
          processed_word << "Wh"
          processed_word << "ay"
        else
          processed_word << "wh"
          processed_word << "ay"
        end
        processed_word = processed_word.join
      elsif word[1] == "k"
        processed_word = word.split(//)
        2.times do processed_word.shift
        end
        if upcase?(word)
          processed_word << "Sk"
          processed_word << "ay"
        else
          processed_word << "sk"
          processed_word << "ay"
        end
        processed_word = processed_word.join
      elsif word[1] == "t"
        processed_word = word.split(//)
        3.times do processed_word.shift
        end
        if upcase?(word)
          processed_word << "Str"
          processed_word << "ay"
        else
          processed_word << "str"
          processed_word << "ay"
        end
        processed_word = processed_word.join
      elsif word[0] == "s"
        processed_word = word.split(//)
        3.times do processed_word.shift
        end
        if upcase?(word)
          processed_word << "Spr"
          processed_word << "ay"
        else
          processed_word << "spr"
          processed_word << "ay"
        end
        processed_word = processed_word.join
      elsif word[1] == "l"
        processed_word = word.split(//)
        2.times do processed_word.shift
        end
        if upcase?(word)
          processed_word << "Pl"
          processed_word << "ay"
        else
          processed_word << "pl"
          processed_word << "ay"
        end
        processed_word = processed_word.join
      elsif word[1] == "r"
        processed_word = word.split(//)
        2.times do processed_word.shift
        end
        if upcase?(word)
          processed_word << "Pr"
          processed_word << "ay"
        else
          processed_word << "pr"
          processed_word << "ay"
        end
        processed_word = processed_word.join
      else
        processed_word = word.split(//)
        2.times do processed_word.shift
        end
        if upcase?(word)
          processed_word << "Th"
          processed_word << "ay"
        else
          processed_word << "th"
          processed_word << "ay"
        end
        processed_word = processed_word.join
      end
    else
      processed_word = word.split(//)
      first_letter = processed_word.shift
      processed_word << first_letter
      processed_word << "ay"
      processed_word = processed_word.join
    end

    processed_word
    end

  def starts_with_vowel?(word)
    if word[0] == "a" || word[0] == "e" || word[0] == "i" || word[0] == "o" || word[0] == "u" ||
        word[0] == "A" || word[0] == "E" || word[0] == "I" || word[0] == "O" || word[0] == "U"
      true
    else
      false
    end
  end

  def special_case?(word)
    if word[0..1] == "sk" || word[0..1] == "pl" || word[0..1] == "th" || word[0..1] == "pr" || word[0..1] == "wh" ||
        word[0..2] == "spr" || word[0..2] == "str"
      true
    else
      false
    end
  end

  def upcase?(word)
    if word != word.downcase
      true
    else
      false
    end
  end

  def to_pig_latin(sentence)
    processed_sentence = ""
    sentence_array = sentence.split(/[ .,?!]/)
    sentence_array.each do |word|
      if sentence_array.last != word
        processed_sentence += "#{piglatinize(word)} "
      else
        processed_sentence += "#{piglatinize(word)}"
      end
    end
    processed_sentence
  end
end