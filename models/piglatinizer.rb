class PigLatinizer

  attr_accessor :words

  def initialize(words = nil)
    @words = words
  end

#works:
  # def piglatinize!
  #   new_array = [ ]
  #   words_array = @words.split
  #   words_array.each do |word|
  #     individual_arr = word.split("")
  #     if individual_arr[0] != "a" && individual_arr[0] != "e" && individual_arr[0] != "i" && individual_arr[0] !="o" && individual_arr[0] != "u"
  #       new_array << move_first_consonants(individual_arr).join + "ay"
  #     else
  #       new_array << word + "way"
  #     end
  #   end
  #
  #   new_array.join(" ")
  # end

  def piglatinize!
    to_pig_latin(@words)
  end

  def to_pig_latin(words)
    new_array = [ ]
    words_array = words.split
    words_array.each do |word|
      new_array << piglatinize(word)
    end
    new_array.join(" ")
  end



  def piglatinize(word)
    new_array = [ ]
    individual_arr = word.split("")
    if not_begin_with_a_vowel?(individual_arr)
      new_array << move_first_consonants(individual_arr).join + "ay"
    else
      new_array << word + "way"
    end
    new_array.join
  end


# works:
  def move_first_consonants(individual_arr)
    if not_begin_with_a_vowel?(individual_arr)
      moved_letter = individual_arr.shift
      new_arr = individual_arr << moved_letter
      move_first_consonants(new_arr)
    else
      individual_arr
    end
  end

  def not_begin_with_a_vowel?(arr)
    arr[0] != "a" && arr[0] != "A" && arr[0] != "e" && arr[0] != "E" && arr[0] != "i" && arr[0] != "I" && arr[0] !="o" && arr[0] != "O" && arr[0] != "u" && arr[0] != "U"
  end

end # End of class
