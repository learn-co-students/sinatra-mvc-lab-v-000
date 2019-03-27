class PigLatinizer

  def piglatinize(text)      
    
    @piglatinized_array = text.split.map do |word|
      if word =~ /^[aeiouAEIOU]/ #if the word starts with a vowel
        word << 'way'
      elsif word =~ /^[^aeiouAEIOU]{3}/ #if the word starts with 3 consonants
        word.gsub(word[0..2], '') + word[0..2] + 'ay'
      elsif word =~ /^[^aeiouAEIOU]{2}/ #if the word starts with 2 consonants
        word.gsub(word[0..1], '') + word[0..1] + 'ay'
      else
        word[1..-1] + word[0] + 'ay' # all other words
      end
     end
    @piglatinized_array.join(' ')
  end 

end