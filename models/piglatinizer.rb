require 'pry'

class PigLatinizer

  def initialize
  end

  def to_pig_latin(user_phrase)
    #1. split normal sentence into array of words
    #2. iterate over array and call #piglatinize on each word; collect each new word into new piglatin_array
    piglatin_array = user_phrase.split(" ").collect do |word|
      self.piglatinize(word)
    end
    #5. join the piglatin_array of piglatinized words
    piglatin_array.join(" ")
  end

  def piglatinize(word)
    #3. if word begins with vowel, add "way" to end of word; the return value is collected in piglatin_array
    if ["a","e","i","o","u"].include?(word.downcase.split(//)[0])
        piglatin_word = word << "way"
        compact_word = piglatin_word.gsub(" ","")
        compact_word
    #4. if word begins with consonant
    else
      #4a. split word into array of letters
      letter_array = word.split(//)
      #4b. loop until first letter in array is a vowel
      until ["a","e","i","o","u"].include?(letter_array.first) 
        ##4bi. remove first letter from array
        first_letter = letter_array.shift  
        ##4bii. push onto back of array
        letter_array << first_letter
      end
      #4c. push "ay" onto etters array, which now starts with vowel
      letter_array << "ay"
      #4d  rejoin array of letters into word; now starts with vowel, ends with "ay"; return value is collected in piglatin_array
      letter_array.join
    end
  end

end