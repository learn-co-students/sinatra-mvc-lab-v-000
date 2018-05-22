require 'pry'
class PigLatinizer
 CON = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "Y", "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
 VOW = ["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"]

  def pl(text)
    if text == "I" || text == "A" || text == "i" || text == "a"
      text + "way"
    elsif CON.join.include?(text[0]) && CON.join.include?(text[1]) && CON.join.include?(text[2])
      x = text.split("")
      y = x.first
      x.shift
      n = x.first
      x.shift
      z = x.first
      x.shift
      x.join + y + n + z + "ay"
    elsif CON.join.include?(text[0]) && CON.join.include?(text[1])
      x = text.split("")
      y = x.first
      x.shift
      n = x.first
      x.shift
      x.join + y + n + "ay"
    elsif VOW.join.include?(text[0])
      text + "way"
    elsif VOW.join.include?(text[0])
      text + "way"
    else
      x = text.split("")
      y = x.first
      x.shift
      x.join + y + "ay"
     end
  end

  def piglatinize(text)
        if ws = text.split(" ")
          ws != 1
          x = ws.map {|w| pl(w)}.join(" ")
        else
          ws = text.split(" ")
          x = pl(text)
        end
        x
  end
end
