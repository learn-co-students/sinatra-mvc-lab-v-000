require 'pry'

class PigLatinizer

  def piglatinize(text)
    words = text.split(" ")
    new_words=[]
    new_words = words.collect  do |word| #{|word| word.split("")}
    word[0].upcase
    word.split("")
    end

    @pigsuffix = new_words.collect do |word|
      consonant_array = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z","G","S","H"]
      if consonant_array.include?(word[0]) && consonant_array.include?(word[1]) && consonant_array.include?(word[2])
        letter_1 = word[0]
        letter_2 = word[1]
        letter_3 = word[2]
        word.delete_at(0)  && word.delete_at(0) && word.delete_at(0)
        "#{word.join}#{letter_1}#{letter_2}#{letter_3}ay"
      elsif consonant_array.include?(word[0]) && consonant_array.include?(word[1])
        letter_1 = word[0]
        letter_2 = word[1]
        word.delete_at(0)  && word.delete_at(0)
        "#{word.join}#{letter_1}#{letter_2}ay"
      elsif consonant_array.include?(word[0])
        letter = word[0]
        word.shift
        "#{word.join}#{letter}ay"
      else
        "#{word.join}way"
      end
    end
  @pigsuffix.join(" ")
       end

end
