class PigLatinizer

  def piglatinize(words)
   vowels = %w{ a e i o u }
   individual_words = words.split
   translated_words = individual_words.map do |word|
     if vowels.include?(word[0].downcase)
       word + "way"
     else
       consonant_helper(word)
     end
   end

   translated_words.join(" ")
  end

  def consonant_helper(word) #school => oolschay
   vowels = %w{ a e i o u }
   consonants = ""
   remaining_vowels = ""
   vowel_index = 0
   word_char_array = word.split(//)
   word_char_array.each_with_index do |letter,index|
     if !(vowels.include?(letter))
       consonants += letter
     else
       vowel_index += index
       break
     end
   end
   remaining_vowels += word[(vowel_index..-1)]
   full_word = remaining_vowels + consonants + 'ay'
  end
end
