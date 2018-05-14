class PigLatinizer

  def initialize
  end

  def piglatinize(string)
    if string[0].scan(/[aeiou]/) == [] #starts with vowel?
      if string[1].scan(/[aeiou]/) == [] #starts with constenant cluters?
        c = string[0..1]
        string.slice!(c)
        string = string + c + "ay"
      else
        c = string[0]
        string.slice!(c)
        string = string + c + "ay"
      end
    end
  end
end
