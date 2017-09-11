
class PigLatinizer

  def to_pig_latin(phrase)
      phrase.split(" ").collect {|word| piglatinize(word)}.join(" ")
  end

  def piglatinize(word)
      if word =~ (/\A[aeiou]/i)
        assembled_word = word + "way"
      else
        i = word.index(/[aeiou]/)
        assembled_word = word[i..-1] + word[0..i-1] + "ay"
      end
      assembled_word
  end

end
