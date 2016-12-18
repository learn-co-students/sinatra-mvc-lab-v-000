class PigLatinizer

  def piglatinize(word)
    alphabet = ('a'..'z').to_a + ('A'..'Z').to_a
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    consonants = alphabet - vowels

    if vowels.include?(word[0])
      word + 'way'
    elsif vowels.include?(word[1])
      word[1..-1] + word[0] + 'ay'
    elsif vowels.include?(word[2])
      word[2..-1] + word[0..1] + 'ay'
    elsif vowels.include?(word[3])
      word[3..-1] + word[0..2] + 'ay'
    else vowels.include?(word[4])
      word[4..-1] + word[0..3] + 'ay'
    end
  end

  def to_pig_latin(string)
    alphabet = ('a'..'z').to_a + ('A'..'Z').to_a
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    consonants = alphabet - vowels

    split_string = string.split
    latininzed = []

    split_string.collect do |w|
      latininzed << piglatinize(w)
    end

    final_words = latininzed.join(" ")
    final_words
  end
end
