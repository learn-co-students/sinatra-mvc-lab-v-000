
class PigLatinizer

  def piglatinize(word)

    non_pig_latin_words = ["i", "me", "to", "too", "a", "an", "in", "and", "on", "I"]
    vowels = ["a", "e", "i", "o", "u", "A", "E", "O", "U"]

    if non_pig_latin_words.include?(word)
      word << "way"
    elsif vowels.include? word[0]
      word << "way"
    else
      consonants = ""
      while !vowels.include?(word[0])
        consonants << word[0]
        word = word.split("")[1..-1].join
      end
      word + consonants + 'ay'
    end
  end


  def to_pig_latin(string)
    string.split(" ").collect{|word| piglatinize(word)}.join(" ")
  end

end