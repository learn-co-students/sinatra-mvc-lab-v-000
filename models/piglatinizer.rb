class PigLatinizer
  attr_reader :text

  def piglatinize(text)
    word_list = text.split(" ")
    new_phrase = []
    word_list.each do |word|
      first_vowel_pos = word.index(word.match(/a|e|i|o|u|A|E|I|O|U/).to_s)
      if first_vowel_pos == 0
        new_phrase << word + "way"
      else
        new_word = word[first_vowel_pos..-1] + word[0..first_vowel_pos-1] + "ay"
        new_phrase << new_word
      end
    end
    puts new_phrase
    new_phrase.join(" ")
  end

end
