class PigLatinizer
  attr_reader :words


  def piglatinize(words)
    text = words.split(" ")
    new_phrase = []
    text.each do |word|
      if word.slice(0) == "a" || word.slice(0) == "e" || word.slice(0) == "i" || word.slice(0) == "o" || word.slice(0) == "u" || word.slice(0) == "A" || word.slice(0) == "E" || word.slice(0) == "I" || word.slice(0) == "O" || word.slice(0) == "U"
        pig = word + "way"
        new_phrase << pig
      elsif word.match(/\A[^aeiouAEIOU]{2,}/) != nil
        letters = word.match(/\A[^aeiouAEIOU]{2,}/).to_s
        range = letters.split("").count - 1
        word_array = word.split("")
        first_letters = word_array.slice!(0..range)
        pig = word_array.join + first_letters.join + "ay"
        new_phrase << pig
      else
        word_array = word.split("")
        first_letter = word_array.delete_at(0)
        pig = word_array.join + first_letter + "ay"
        new_phrase << pig
      end
    end
    new_phrase.join(" ")
 end
end
