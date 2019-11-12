require 'pry'
class PigLatinizer

  def to_pig_latin(phrase)
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    words = phrase.split(" ")
    words.map! do |word|
      if vowels.any? {|vowel| vowel == word[0]}
        word.insert(-1, "way")
      else
        split_word = word.split('')

        consonants = []
        index = 0
        split_word.each do |letter|
          if vowels.none? {|vowel| vowel == letter}
            consonants << letter
            index += 1
          else
            break
          end
        end
        piglatin_array = split_word[index..-1]
        piglatin_array << consonants.join("")
        piglatin_array << "ay"
        piglatin_array.join("")
      end
    end
    words.join(" ")
  end

  def piglatinize(phrase)
    to_pig_latin(phrase)
  end
end
