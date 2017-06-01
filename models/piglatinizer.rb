class PigLatinizer

  def piglatinize(text)
    if text.length == 1 && text.downcase.match(/a|e|i|o|u/)
      piglatinized = text + "way"
    elsif text[0].downcase.match(/a|e|i|o|u/)
      piglatinized = "#{text}way"
    else
      piglatinized = nil
      text.split("").each_with_index do  |letter, i|
        if letter.match(/a|e|i|o|u/)
          constants = text.slice(0, i)
          word = text.slice(i, (text.size - 1))
          piglatinized = word + constants + "ay"
          break
        end
      end
      piglatinized
    end
  end

  def to_pig_latin(phrase)
    phrase.split(" ").map { |e| piglatinize(e) }.join(" ")
  end
end
