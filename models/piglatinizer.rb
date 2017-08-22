class PigLatinizer
  attr_reader :text

  def initialize
    @text = text
  end

  def piglatinize(text)
    words = text.split(" ")
    words.each do |word|
      if word[0].match(/[aeouiAEIOU]/)
        word.concat('way')
      else
      #  binding.pry
        if word[0..1].downcase.include?("th") ||
           word[0..1].downcase.include?("pl")||
           word[0..1].downcase.include?("pr") ||
           word[0..1].downcase.include?("wh") ||
           word[0..1].downcase.include?("sk")
          first_letter = word.slice!(0..1)
        elsif
          word[0..2].downcase.include?("spr") ||
          word[0..2].downcase.include?("str")
          first_letter = word.slice!(0..2)
        else
          first_letter = word.slice!(0)
        end
        word.concat(first_letter)
        word.concat('ay')
      end
    end
    words.join(" ")
  end

  def to_pig_latin(text)
    piglatinize(text)
  end
end
