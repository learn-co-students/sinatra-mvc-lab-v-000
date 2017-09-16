class PigLatinizer

def piglatinize(text)
    alpha = ('a'..'z').to_a
    alpha << ('A'..'Z').to_a
    alpha.flatten!

    vowels = %w[a e i o u A E I O U]
    consonants = alpha - vowels
    if vowels.include?(text[0])
      text + 'way'
    elsif text[-2,2]== "ay"
      "ay" + text
    elsif text[0..2] == "Str"
      text[3..-1] + text[0..2] + 'ay'
    elsif consonants.include?(text[0]) && consonants.include?(text[1])
      text[2..-1] + text[0..1] + 'ay'
    elsif consonants.include?(text[0])
    text[1..-1] + text[0] + 'ay'
    else
       text # return unchanged
    end
    end

    def to_pig_latin(string)
      string.split.collect{|text| piglatinize(text)}.join (" ")
    end
end
