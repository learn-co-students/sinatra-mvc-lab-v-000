class PigLatinizer
  attr_reader :text

  def initialize(text = 'nil')
    @text = text
  end

  def to_pig_latin(sentence)
    sentence.split.map{|text| piglatinize(text)}.join(' ')
  end

  def piglatinize(text)
    if consonants(text)
      consonants(text)
    else
      vowel(text)
    end
  end

  def vowel(text)
    vowels = text.downcase.scan(/[aeoui]/)
    vowels.include?(text[0].downcase)
    text << "way"
  end

  def consonants(text)
    cons = text.downcase.scan(/[bcdfghjklmnpqrstvwxyz]/)
    if cons.include?(text.downcase[0]) && cons.include?(text.downcase[1]) && cons.include?(text.downcase[2])
       letters = text.slice(0,3) << "ay"
       text[3..-1] << letters
    elsif cons.include?(text.downcase[0]) && cons.include?(text.downcase[1])
      letters = text.slice(0,2) << "ay"
      text[2..-1] << letters
    elsif cons.include?(text.downcase[0])
      letter = text.slice(0) << "ay"
      text[1..-1] << letter
    end
  end

end
