class PigLatinizer
  attr_accessor

  def initialize()

  end

  def piglatinize(text)
    all_letters = [('a'..'z') || (/[^A-Z]*/)].to_a
    vowels= %w([a e i o u] || [A E I O U])
    consonants = all_letters - vowels

    if vowels.include?(text[0])
      text + 'way'
    elsif consonants.include?(text[0]) &&
          consonants.include?(text[1])
           text[2..-1] + text[0..1] + 'ay'
    elsif text[0..1] == "qu"
         text[2..-1]+"quay"
    elsif text[0..2] == "squ"
          text[3..-1]+"squay"
    else vowels.include?(text[0])
         text[1..-1] + text[0] + 'ay'
    end
  end

  def to_pig_latin(text)
   split_text = text.split(",").to_a
   phrase = piglatinize(split_text)
   new_array = phrase.split(",")
  end

end
