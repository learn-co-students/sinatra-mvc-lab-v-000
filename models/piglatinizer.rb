class PigLatinizer

  def piglatinize(word) #for individual words
    word_as_array = word.split("")
    if determine_if_array_starts_with_vowel(word_as_array)
      return add_way(word_as_array)
    else

      if determine_if_array_starts_with_vowel(take_off_first_letter(word))
        return add_ay(take_off_first_letter(word))
      else
        one_letter_moved = take_off_first_letter(word).join("")
        if determine_if_array_starts_with_vowel(take_off_first_letter(one_letter_moved))
          return add_ay(take_off_first_letter(one_letter_moved))
        else
          two_letter_moved = take_off_first_letter(one_letter_moved).join("")
          if determine_if_array_starts_with_vowel(take_off_first_letter(two_letter_moved))
            return add_ay(take_off_first_letter(two_letter_moved))
          end
        end
      end
    end

  end

  def to_pig_latin(phrase) #for the whole sentence
    array_of_words = phrase.split(" ").map do |word|
      piglatinize(word)
    end
    array_of_words.join(" ")
  end

  def take_off_first_letter(word)
      word_as_ary = word.split("")
      new_order = word_as_ary << word_as_ary.shift
  end

  def determine_if_array_starts_with_vowel(array)
      first_letter = array[0]
      ["a","e","i","o","u","A","E","I","O","U"].include?(first_letter)
  end

  def add_ay(array)
    array << "a"
    array << "y"
    array.join("")
  end

  def add_way(array)
    array << "w"
    array << "a"
    array << "y"
    array.join("")
  end

  def get_it_done
    latinized_as_array = self.splits_the_sentence.map do |word|
        if word == "a"
          "away"
        else
          if determine_if_starts_with_vowel(word)
            word_as_array = word.split("")
            add_ay(word_as_array)
          else
            add_ay(take_off_first_letter(word))
          end
        end
      end
    latinized_as_array.join(" ")
  end



end
