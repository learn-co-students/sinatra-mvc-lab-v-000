class PigLatinizer

  def initialize
  end

  def piglatinize(word)
    if word[0].downcase.match(/[aeiou]/)
      word << "way"
    else array=word.split("")
      until array[0].downcase.match(/[aeiou]/)
        array.rotate!
      end
      array << ["a","y"]
      array.join
    end
  end

  def to_pig_latin(sentence)
    piglatin=[]
    sentence.split(" ").each do |word|
    piglatin << piglatinize(word)
  end
  piglatin.join(" ")
end

end
