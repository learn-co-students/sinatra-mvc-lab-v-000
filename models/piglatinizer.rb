class PigLatinizer
  
  #def initialize
    #@text = text
  #end

  def piglatinize(word)
    charsToShift = word.split(/[AEIOUaeiou]/)[0]

   if charsToShift == nil || charsToShift == ""
      result  = word + "way"
    else
      result = word.sub(charsToShift,'') + charsToShift + "ay"
    end
    result
  end

  def to_pig_latin(sentence)
    sentence.split(" ").map {|word| piglatinize(word)}.join(" ")
  end

end