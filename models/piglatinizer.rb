class PigLatinizer
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def piglatinize

    if text[0].match(/[bcdfghjklmnpqrstvwxyz]/) && text[1].match(/[bcdfghjklmnpqrstvwxyz]/)
      sliced_text = text.slice!(0..1)
      text = text << sliced_text << "ay"

    elsif text[0].match(/[bcdfghjklmnpqrstvwxyz]/)
      sliced_text = text.slice!(0)
      text = text << sliced_text << "ay"

    elsif text[0].match(/[aeoui]/)
        text = text << "way"

    end

  end

  def to_pig_latin(text)
    sentence_array = []
    text.split.each do |t|
     sentence_array << t.piglatinize
   end
   sentence_array.join(" ").to_s
  end




end
