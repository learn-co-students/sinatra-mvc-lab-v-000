class PigLatinizer

  def piglatinize(word)
    alphabet = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alphabet - vowels
    letters = word.downcase.split("")
    if vowels.include?(letters[0])
      word + 'way'
    else
      vowel_index = letters.find_index {|l| %w[a e i o u y].include?(l)}
      translation = letters[vowel_index..-1]+letters[0..vowel_index-1]+['ay']
      translation.join
    end
  end

  def to_pig_latin(sentance)
    
  end

end
