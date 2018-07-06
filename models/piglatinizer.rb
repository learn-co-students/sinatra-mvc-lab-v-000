class PigLatinizer
  attr_reader :user_phrase

  def piglatinize(user_phrase)
    @text_array = user_phrase.split(" ")
    vowels = /[aeoui]/i
    consonants = /[bcdfghjklmnpqrstvwxyz]/i
    @text_array.map do |word|
      if word[0].match(vowels)
        word + "way"
      else
        leading_cons = word.index(vowels)
        move_letters(word, leading_cons)
      end
    end.join(" ")
  end

  def move_letters(word, cons)
    word_array = word.split("")
    cons.times do
      word_array.insert(word.length - 1, word_array.delete_at(0))
    end

    word_array.join("") + "ay"
  end
end
