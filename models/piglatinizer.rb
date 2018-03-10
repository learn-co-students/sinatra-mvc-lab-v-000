class PigLatinizer
  attr_accessor :pig_latin_sentence

  def piglatinize(string)
    letters = ('a'..'z').to_a   # [*'a'..'z']
    vowels = ['a', 'e', 'i', 'o', 'u']  # %w[a e i o u]
    consonants = letters - vowels

    string.gsub(/\w+/) do|word|
      if word.length == 1 || vowels.include?(word.downcase[0]) || word.match(/[aeiou]/).nil?
        word + "way"
      else
        first_vowel_index = word.index(/[aeiou]/)

        word[first_vowel_index, word.length - first_vowel_index] +
        word[0, first_vowel_index] +
        "ay"
      end
    end
  end

  def to_pig_latin(sentence)
    pig_latin_sentence = sentence.split(' ').map do |word|
      self.piglatinize(word)
    end.join(' ')
  end

end
