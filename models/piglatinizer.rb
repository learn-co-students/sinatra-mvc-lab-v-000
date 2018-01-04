require 'pry'
class PigLatinizer

  def piglatinize(word)
    new_word = []
    split_array = word.split(/([aeiouAEIOU].*)/)
    split_array.delete_if { |e| e == '' || e == nil}

    if split_array.length == 1
      new_word << split_array[0]
      new_word << "way"
    else
      new_word << split_array[1]
      new_word << "#{split_array[0]}ay"
    end
    new_word.join
  end

  def to_pig_latin(phrase)
    phrase.split(" ").map{ |w| piglatinize(w)}.join(" ")
  end
end
