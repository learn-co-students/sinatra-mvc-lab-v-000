class PigLatinizer

  def piglatinize(text)
    text_array = text.split(" ").to_a
    translated_array = []

    text_array.each do |word|
      alphabet = ('a'..'z').to_a + ('A'..'Z').to_a
      vowels = ["a", "e", "i", "o", "u", "A", "I", "E", "O", "U"]
      consonants = alphabet - vowels

      if vowels.include?(word[0])
        translated_array << (word + 'way')
      elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
        translated_array << (word[3..-1] + word[0..2] + 'ay')
      elsif consonants.include?(word[0]) && consonants.include?(word[1])
        translated_array << (word[2..-1] + word[0..1] + 'ay')
      elsif consonants.include?(word[0])
        translated_array << (word[1..-1] + word[0] + 'ay')
      else
        translated_array << word
      end
    end
      translated_array.join(" ")
  end
end
