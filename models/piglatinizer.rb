class PigLatinizer

  def piglatinize(word)
    @array = word.split("")
    if "aeiouAEIOU".include?(@array[0])
      word + "way"
    else
      @letter = ""
      start_with_consonants
    end
  end

  def start_with_consonants
    @letter = @letter + @array.shift
    if @array[0]
      if "aeiouAEIOU".include?(@array[0])
        @array.join + @letter + "ay"
      else
        start_with_consonants
      end
    else
      ""
    end
  end

  def to_pig_latin(phrase)
    phrase.split(" ").map do |word|
      piglatinize(word)
    end.join(" ")
  end

end
