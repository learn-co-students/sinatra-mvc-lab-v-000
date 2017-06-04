require_relative '../config/environment'

class PigLatinizer

  def to_pig_latin(string)
    words_array = string.split(" ")
    words_array.collect! {|word| piglatinize(word)}
    words_array.join(" ")
  end

  def array_maker(word)
    if word.size <= 1
      Array.new << word
    else
      letter_array = word.gsub(/[^a-zA-Z]/, '').split('')
    end
  end

  def piglatinize(word)
    letter_array = array_maker(word)
    if !letter_array.first.match(/[aeiouAEIOU]/)
      until letter_array.first.match(/[aeiou]/) do
        letter_array.rotate!(1)
      end
      letter_array.push("ay").join("")
    else
      letter_array.push("way").join("")
    end
  end

end
