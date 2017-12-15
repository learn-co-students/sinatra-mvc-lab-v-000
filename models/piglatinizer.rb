class PigLatinizer

  def to_pig_latin(phrase)
    words = phrase.split(" ")
    words.map do |word|
      if word[0] =~ /[aeiou]/
        word << "way"
      else
        split_word = word.split("")
        split_word.map do |letter|
          consonants = []
          index = 0
          until letter =~ /[aeiou]/
            consonants << letter
            index += 1
          end
          piglatin_array = split_word[index..-1]
          piglatin_array << consonants
          piglatin_array << "ay"
        end
      end
    end
  end

  def piglatinize(phrase)
    to_pig_latin(phrase).join(" ")
  end
end
