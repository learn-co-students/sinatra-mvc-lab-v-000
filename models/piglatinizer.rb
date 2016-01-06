class PigLatinizer
  @@alphabet = ('a'..'z').to_a #creates range of letters from a to z and converts to array
  @@vowels = %w[a e i o u] #creates an array of vowels
  @@consonants = @@alphabet - @@vowels #sets consonants to all letters minus vowels
  @@non_pig_latin_words = %w[i me to too a an in and on] #creates an array of words to not piglatinize

  #piglatinizes an individual word
  def piglatinize(word)
    if @@non_pig_latin_words.include?(word.downcase) #if the word is a non pig latin word
      word # return the original word
    elsif @@vowels.include?(word[0].downcase) #if first letter of word is a vowel
      word + 'ay' #apple => appleay
    elsif @@consonants.include?(word[0].downcase) && @@consonants.include?(word[1].downcase) && @@consonants.include?(word[2].downcase) #if first letter is a consonant and second letter is a consonant
      word[3..-1] + word[0..2] + 'ay' #stream => eamstray
    elsif @@consonants.include?(word[0].downcase) && @@consonants.include?(word[1].downcase) #if first letter is a consonant and second letter is a consonant
      word[2..-1] + word[0..1] + 'ay' #cherry => errychay -- word[2..-1] means third character till end of word
    elsif @@consonants.include?(word[0].downcase) #if first letter is a consonant
      word[1..-1] + word[0] + 'ay' #dog => ogday
    else
      word # return the original word
    end
  end

  #splits the sentence to piglatinize each word
  def to_pig_latin(phrase)
    phrase.gsub(/[^\w\s\d]/, '').split(" ").collect{ |word| self.piglatinize(word) }.join(" ") #gsub(/[^\w\s\d]/, '') gets rid of punctuation
  end

end