class PigLatinizer

  attr_reader :text

  def piglatinize(text)
    to_pig_latin(text)
  end

  def to_pig_latin(text)
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    split_text = text.split(" ")
    split_text.collect do |word|
      first_letter = word[0]
      first_consonant_cluster = word.split(/[aeiouAEIOU]/).first
      if vowels.include?(first_letter)
        word + "way"
      else
        word[first_consonant_cluster.size..-1] + first_consonant_cluster + "ay"
      end
    end.join(" ")
  end
end
