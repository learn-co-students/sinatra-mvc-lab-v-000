class PigLatinizer
  attr_accessor :text

  def initialize
  end

  def piglatinize(text)
    text.split(" ").map do |word|
      word = word.gsub(/[\W]/, "")
      if word.downcase.chars.first.match(/[aeiou]/)
        word + "way"
      elsif word.downcase.chars.first.match(/^[^aeiou]/)
        first_letters = word.match(/^[^aeiouAEIOU]+/).to_s
        word.gsub(/^[^aeiou]+/, "") + first_letters + "ay"
      end
    end.join(" ")
  end

  def to_pig_latin(text)
    piglatinize(text)
  end
end
