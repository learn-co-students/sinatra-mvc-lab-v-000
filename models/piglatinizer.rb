class PigLatinizer

  def piglatinize(word)
    pig_lat = word.split(/[AEIOUaeiou]/)[0]

   if pig_lat == nil || pig_lat == ""
      result  = word + "way"
    else
      result = word.sub(pig_lat,'') + pig_lat + "ay"
    end
    result
  end

  def to_pig_latin(sentence)
    sentence.split(" ").map {|word| piglatinize(word)}.join(" ")
  end

end
