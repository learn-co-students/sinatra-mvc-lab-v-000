class PigLatinizer


  def piglatinize(word)
    

  end

  def to_pig_latin(sentence)
    sentence.split.collect{|word|piglatinize(word).join("")}
  end


  def consonent?(character)
    !character.match(/[aAeEiIoOuU]/)
  end


end
