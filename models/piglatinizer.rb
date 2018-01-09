class PigLatinizer

  def piglatinize(word)
    vowels = %w[a e i o u]
    #if word starts with a vowel, add "way" to end
    if vowels.include?(word[0].downcase)
      word << "way"
    #if word starts with two consonants, remove first letter of word
    else
      consonant_cluster = word.chars.take_while {|c| !vowels.include?(c.downcase) }
      # make new word without consonant cluster, then append consonant cluster, then add ay
      word[consonant_cluster.length..-1] + consonant_cluster.join + "ay"
    end
  end

  def to_pig_latin(phrase)
    # Call existing method as proc with ampersand (&)
    # Simple equivalent: phrase.split(" ").map({|x| piglatinize(x) }).join(" ")
    phrase.split(" ").map(&method(:piglatinize)).join(" ")
  end
  
  
end
