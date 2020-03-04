require 'pry'
class PigLatinizer

  def piglatinize(word)
    if word.match(/^[^aeoiuAEIOU]{3}/)
      "#{word[3..-1]}#{word[0..2]}ay"
    elsif word.match(/^[^aeoiuAEIOU]{2}/)
      "#{word[2..-1]}#{word[0..1]}ay"
    elsif word.match(/^[^aeoiuAEIOU]/)
      "#{word[1..-1]}#{word[0]}ay"
    else
      "#{word}way"
    end
  end

  def to_pig_latin(words)
    words.split(" ").map { |word| piglatinize(word) }.join(" ")
  end

end
