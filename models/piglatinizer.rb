class PigLatinizer

  def initialize
  end

  def piglatinize(phrase)
    words = phrase.split
    piglatinized_phrase = ""
    words.each do |word|
      piglatinized_phrase << word_to_piglatinize(word) + " "
    end
    piglatinized_phrase.strip
  end

   def word_to_piglatinize(word)
     vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
     if vowels.include? word[0]
       word + "way"
     elsif !vowels.include?(word[0]) && !vowels.include?(word[1]) && !vowels.include?(word[2])
       word[3..-1] + word[0..2] + "ay"
     elsif !vowels.include?(word[0]) && !vowels.include?(word[1])
       word[2..-1] + word[0..1] + "ay"
     else !vowels.include?(word[0])
       word[1..-1] + word[0] + "ay"
    end
  end

end
