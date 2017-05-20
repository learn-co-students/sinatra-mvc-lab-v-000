class PigLatinizer
  def to_pig_latin(strings)
    piglatinize(strings)
  end

  def piglatinize(strings)
    arr = strings.split(" ")
    vx = /[aeiou]/i
    cx = /[b-df-hj-np-tv-z]/i
    arr.map do |s|
      if s[0].match(vx)
        s += "way"
      elsif s[0].match(cx) && s[1].match(cx) && s[2].match(cx) && s[3] == "e"
        s = "#{s[3..-1]}#{s[0..2]}ay"
      elsif s[0].match(cx) && s[1].match(cx) && s[2].match(cx)
        s = "ay#{s}"
      elsif s[0].match(cx) && s[1].match(cx)
        s = "#{s[2..-1]}#{s[0..1]}ay"
      else
        s = "#{s[1..-1]}#{s[0]}ay"
      end
    end.join(" ")
  end
end
