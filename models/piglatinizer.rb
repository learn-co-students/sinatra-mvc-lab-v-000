
class PigLatinizer

  def vowel?(letter)
    ["a","e","i","o","u"].include?(letter)
  end
 
 
  def piglatinize(words)
    pig_sentence = []

    words_arr = words.split(" ")
    words_arr.each do |word|
      
      c = 0
      letters = word.split("")
      letters.length.times do 
        if vowel?(letters[0].downcase)
          break
        else 
          c += 1
          shft = letters.shift
          letters << shft
        end
      end

      if c == 0 
        new_word = letters.join("") + "way"
      else 
        new_word = letters.join("") + "ay"
      end
      
      pig_sentence << new_word
    end 
 
    pig_sentence.join(" ")
  end

end




