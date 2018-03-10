class PigLatinizer

  def piglatinize(word)
    alphabet = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alphabet - vowels
    letters = word.split("")
    if vowels.include?(letters[0].downcase)
      word + 'way'
    else
      vowel_index = letters.find_index {|l| %w[a e i o u y].include?(l.downcase)}
      translation = letters[vowel_index..-1]+letters[0..vowel_index-1]+['ay']
      translation.join
    end
  end

  def to_pig_latin(sentance)
    words = sentance.split(" ")
    words.map! {|word| piglatinize(word)}
    words.join(" ")
  end

end
