class PigLatinizer

  def piglatinize(word)
    if word.include?("ay")
      word
    else
      word.split("").drop << "ay".join("")
    end
  end

end
