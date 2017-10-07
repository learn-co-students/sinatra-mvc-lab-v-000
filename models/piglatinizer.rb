class PigLatinizer

  def piglatinize(word)
    cons_sound = word.downcase[/\A[^aeiou]+/]
    if cons_sound != nil
      result = word.gsub(cons_sound, "")
      result + cons_sound + "ay"
    else
      word + "way"
    end
  end

  def to_pig_latin(string)
    string.split(" ").map do |word|
      cons_sound = word[/\A[^aeiouAEIOU]+/]
      if cons_sound != nil
        word.slice!(0, cons_sound.size)
        word + cons_sound + "ay"
      else
        word + "way"
      end
    end.join(" ")
  end

end
