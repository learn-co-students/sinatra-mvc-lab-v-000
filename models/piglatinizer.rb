class PigLatinizer

attr_accessor :output

  def piglatinize(s)
    first_vowel = s.index(s.split("").detect {|c| 'aeiou'.include?(c.downcase)})
    case first_vowel
    when 0 then "#{s}way"
    when -1 then s
    else "#{s[first_vowel..-1] + s[0...first_vowel]}ay"
    end
  end

  def to_pig_latin(words)
    words.split.map {|w| piglatinize(w)}.join(" ")
  end

end
