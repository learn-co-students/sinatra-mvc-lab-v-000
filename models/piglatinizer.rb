class PigLatinizer
   def piglatinize(word)
      alpha = ('a'..'z').to_a + ('A'..'Z').to_a
      vowels = %w[a e i o u A E I O U]
      consonants = alpha - vowels
      # binding.pry
      if vowels.include?(word[0])
         word + 'way'
      elsif word[0] == 'S' && word[1] == 't' && word[2] == 'r'
         word[3..-1] + word[0..2] + 'ay'
      elsif word[0] == 's' && word[1] == 'p'
         'ay' + word
      elsif consonants.include?(word[0]) && consonants.include?(word[1])
         word[2..-1] + word[0..1] + 'ay'
         # word[0..1] + 'ay'
      elsif consonants.include?(word[0])
         word[1..-1] + word[0] + 'ay'
      else
         word
      end
   end

   def to_pig_latin(words)
      arr_phrase = words.split
      piglatinized_phrase = ''
      arr_phrase.each do |word|
         piglatinized_phrase += piglatinize(word) + ' '
      end
      piglatinized_phrase.strip
   end
end
