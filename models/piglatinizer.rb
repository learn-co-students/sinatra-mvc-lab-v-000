class PigLatinizer

  attr_accessor :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def piglatinize!
    new_array = [ ]
    words_array = @phrase.split
    words_array.each do |word|
      individual_arr = word.split("")
      if individual_arr[0] != "a" && individual_arr[0] != "e" && individual_arr[0] != "i" && individual_arr[0] !="o" && individual_arr[0] != "u"
        new_array << move_first_consonants(individual_arr).join + "ay"
      else
        new_array << word + "way"
      end
    end

    new_array.join(" ")
  end

  def move_first_consonants(individual_arr)
    if individual_arr[0] != "a" && individual_arr[0] != "e" && individual_arr[0] != "i" && individual_arr[0] !="o" && individual_arr[0] != "u"
      moved_letter = individual_arr.shift
      new_arr = individual_arr << moved_letter
      move_first_consonants(new_arr)
    else
      individual_arr
    end
  end

end
