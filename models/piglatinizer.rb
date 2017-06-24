class PigLatinizer

  def piglatinize(word)
    vowels = ["a","e","i","o","u"]
    first_vowel_index = word.chars.find_index{|char| vowels.include?(char.downcase)}
    if first_vowel_index == 0
      word + "way"
    else
      first_cons = word[0..first_vowel_index -1]
      leftovers = word[first_vowel_index..-1]
      leftovers + first_cons + "ay"
    end
  end

  def to_pig_latin(sentence)
    words = sentence.split(" ")
    words.map{|w| piglatinize(w)}.join(" ")
  end
end
