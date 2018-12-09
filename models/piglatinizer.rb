
class PigLatinizer

  def to_pig_latin(word)
    letters = word.split(/([^aeiouAEIOU]*)([aeiouAEIOU]*)(.*)/)
    f_part = letters[1]
    the_rest = letters[2] + (letters[3] || "")
    if f_part.length > 0
      "#{the_rest}#{f_part}ay"
    else
      "#{the_rest}way"
    end
  end

  def piglatinize(string)
    if string.include?(" ")
      words = string.split(" ")
      words.collect {|w| to_pig_latin(w)}.join(" ")
    else
      to_pig_latin(string)
    end
  end
end
