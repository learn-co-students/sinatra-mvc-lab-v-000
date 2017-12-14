class PigLatinizer

  def split_in_array(phrase)
    words = phrase.split(" ")
    words.map do |word|
      first_part = word[1..-1]
      if word[-1] =~ /[aeiou]/
        second_part = word[0] + "way"
      else
        second_part = word[0] + "ay"
      end
      first_part + second_part
    end
  end

  def to_pig_latin(phrase)
    split_in_array(phrase).join(" ")
  end

  def piglatinize(phrase)
    to_pig_latin(phrase).join(" ")
  end
end
