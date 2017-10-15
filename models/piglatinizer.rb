class PigLatinizer

  @@alphabet = ('a'..'z').to_a
  @@vowels = ['a','e','i','o','u']
  @@consonants = @@alphabet - @@vowels

  def to_pig_latin(user_phrase)
    words = user_phrase.split(" ")
    words.map!{|word| piglatinize(word)}
    words.join(" ")
  end

  def piglatinize(word)
    all_lower = word.downcase
    if @@vowels.include?(all_lower[0])
      word.capitalize == word ? (word + "way").capitalize : word + "way"
    elsif @@consonants.include?(all_lower[0]) && @@vowels.include?(all_lower[1])
      word[1..-1] + word[0] + 'ay'
    elsif @@consonants.include?(all_lower[0]) && @@consonants.include?(all_lower[1]) && @@vowels.include?(all_lower[2]) #inefficient code
      word[2..-1] + word[0..1] + 'ay'
    elsif @@consonants.include?(all_lower[0]) && @@consonants.include?(all_lower[1]) && @@consonants.include?(all_lower[2]) #inefficient code
      word[3..-1] + word[0..2] + 'ay'
    end
  end
end
