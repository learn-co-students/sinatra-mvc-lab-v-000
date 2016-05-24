
class PigLatinize
  attr_accessor :text
  @@vowels = ['a', 'e', 'i', 'o', 'u']

  def initialize(text = nil)
    @text = text
  end

  def piglatin
    words = self.text.split(" ")
    pigged_words = []
    pigged_words = words.map do |word|
      convert_to_pig_latin(word)
    end
    pigged_words.join(" ")
  end

  def convert_to_pig_latin(word)
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

# hack to pass spec's
class PigLatinizer < PigLatinize
  def piglatinize(word)
    convert_to_pig_latin(word)
  end

  def to_pig_latin(phrase)
    @text = phrase
    piglatin
  end
end
