
class PigLatinizer
  attr_accessor :text
  @@vowels = ['a', 'e', 'i', 'o', 'u']

  def initialize(text = nil)
    @text = text
  end

  def to_pig_latin(phrase = @text)
    words = phrase.split(" ")
    pigged_words = []
    pigged_words = words.map do |word|
      piglatinize(word)
    end
    pigged_words.join(" ")
  end

  def piglatinize(word)
    converted_word = word
    #if word starts with vowel
    if word.downcase.start_with?('a', 'e', 'i', 'o', 'u')
      #add "way" to the end
      converted_word << "way"
    else
      last_consonant_index = 0
      word.split("").each_with_index do |char, i|
        if @@vowels.include?(char.downcase)
          last_consonant_index = i-1
          found_vowel = true
        end
        break if found_vowel
      end
      leading_consonants = word[0..last_consonant_index]
      converted_word = converted_word[last_consonant_index+1..-1]
      converted_word << "#{leading_consonants}ay"
    end
    converted_word
  end
end
