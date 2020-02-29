class PigLatinizer
  
  @vowels = ['a','e','i','o','u']
  
  def piglatinize(word)
    first_letter = true
    save = word
    words_at_end = ""
    word.split('').each do |letter|
      if letter.scan(/[aeouiAEIOU]/).count > 0
        if first_letter == true
          return save + "way"
        else
          return save + words_at_end + "ay"
        end
      else
        words_at_end = words_at_end + letter
        save = save.split('')
        save.shift
        save = save.join('')
        first_letter = false
      end
    end
  end
  
  def to_pig_latin(sentence)
    sentence_array = sentence.split(" ")
    pig_latinized_sentence = ""
    sentence_array.each do |word|
      pig_latinized_sentence = pig_latinized_sentence + piglatinize(word) + " "
    end
    pig_latinized_sentence[0..-2]
  end
  
  
  
end