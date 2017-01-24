class PigLatinizer
  def piglatinize(text)
    word = text
    latinized_word = ""
      if word.length < 2 or word[0].downcase == 'a' or word[0].downcase == 'e' or word[0].downcase == 'i' or word[0].downcase == 'o' or word[0].downcase == 'u'
        latinized_word = word + 'way'
      else
        latinized_word = word.split(/([aeiou].*)/)[1] + word.split(/([aeiou].*)/)[0] + 'ay'
      end
      latinized_word
  end

  def to_pig_latin(text)
    word_array = text.split(" ")
    latinized_array = []
    word_array.each{ |word|
      latinized_array << piglatinize(word)
    }
    latinized_array.join(" ")
  end
end
