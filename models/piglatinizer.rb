
class PigLatinizer

  def piglatinize(input)
    vowels = %W[a e i o u]
    word_array = input.split("")
    if vowels.include?(input[0].downcase)
      input << "way"
    else
      while !vowels.include?(word_array[0])
        word_array.rotate!
      end
      word_array.join("") << "ay"
    end
  end

  def to_pig_latin(sentence)
    sentence = sentence.split(" ")
    sentence.map {|word| piglatinize(word)}.join(" ")
  end


end
