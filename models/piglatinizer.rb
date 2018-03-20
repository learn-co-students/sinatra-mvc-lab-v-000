class PigLatinizer 
  attr_reader :text
  
 
  
 
  def piglatinize(text)
    consonants = ['b','c','d', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z', 'B', 'C', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'V', 'W', 'X', 'Y', 'Z']
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    words = text.split(" ")
    pig_latin = words.map do |word|
        if vowels.include?(word[0])
          word + 'way'
        elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
          word[3..-1] + word[0..2] + 'ay'
        elsif consonants.include?(word[0]) && consonants.include?(word[1])
          word[2..-1] + word[0..1] + 'ay'
        elsif consonants.include?(word[0])
          word[1..-1] + word[0] + 'ay'
        end
      end
    pig_latin.join(" ")  
  end

end 