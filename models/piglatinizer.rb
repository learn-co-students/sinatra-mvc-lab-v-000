class PigLatinizer

  attr_reader :text
  
  def move_consonants_to_end(text)
    text_array = text.split("")
    until text_array[0].scan(/[aeiouAEIOU]/) != []
      x = text_array.shift
      text_array << x
    end
    text_array.join()
  end

  def word_begins_with_vowel?(text)
      text_array = text.split("")
      if text_array[0].scan(/[aeiouAEIOU]/) != []
        true
      else
        false
      end
  end

  def split_sentence_into_words(text)
    text.split(" ")
  end

  def add_way(text)
    text + "way"
  end

  def add_ay(text)
    move_consonants_to_end(text) + "ay"
  end



  def piglatinize(text)
    answer = ""
    if text.include? " " #multiple words
      words_array = split_sentence_into_words(text)
      words_array.each do |word|
        if word_begins_with_vowel?(word)
          pig_word = add_way(word)
        else
           pig_word = add_ay(word)
        end
        answer << pig_word + " "
      end
    else #single word
      if word_begins_with_vowel?(text)
        answer = add_way(text)
      else #if word has consonants at the beginning
         answer = add_ay(text)
       end
    end
    answer.chomp(" ")
  end

end
