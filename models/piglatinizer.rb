class PigLatinizer

  def piglatinize(text)
    if text.include?(" ")
      to_pig_latin(text)
    else
      if text[0].scan(/[aeiouAEIOU]/).count > 0
        "#{text}way"
      elsif text[0..2].scan(/[bcdfghjklmnpqrstvwxyz]/).count > 2
          "#{text[3..-1]}#{text[0..2]}ay"
      elsif text[0..1].scan(/[bcdfghjklmnpqrstvwxyz]/).count > 1
          "#{text[2..-1]}#{text[0..1]}ay"
      else
          "#{text[1..-1]}#{text[0]}ay"
      end
    end
  end

  def to_pig_latin(sentence)
    sentence.split.map do |w|
      piglatinize(w)
    end.join(" ")
  end
end
