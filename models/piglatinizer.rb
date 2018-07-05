
class PigLatinizer

  def piglatinize(sentence)
    #splits sentence into an array of words
    words = sentence.split(" ")

    words.collect do |word|
      #finds the first vowel to set at the slicing point
      key = word.index("#{word.scan(/[aeiouAEIOU]/).first}")
      #slices and then appends the consonants before the first vowel
      pigword = word.slice!(0,key)
      word << "#{pigword}#{"w" if key == 0}ay"
    end.join(" ")

  end


end
