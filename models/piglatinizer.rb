class PigLatinizer
  def to_pig_latin(text)
    text.split(" ").collect{|word| piglatinize(word)}.join(" ")
  end

  def piglatinize(text)
    alphabet = ('a'..'z').to_a
    alphabet += ('A'..'Z').to_a
    vowels = %w[a e i o u A E I O U]
    consonants = alphabet - vowels
    if vowels.include?(text[0]) # if the first char is a vowel
      return text + 'way'
    elsif consonants.include?(text[0])
      chars = text.split("")
      first_vowel = chars.index(chars.find{|l| vowels.include?(l)})
      return text[first_vowel..-1] + text[0..first_vowel-1] + 'ay'
    else
      return text
    end
  end 


#Check to see if my word starts with a vowel.
#If it does, add “way” to the end of the word.
#If it doesn’t, I need to split the word at the first vowel,
#and add the beginning consonants to the end of the word, along with “ay”.

end
