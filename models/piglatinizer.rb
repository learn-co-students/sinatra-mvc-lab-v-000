class PigLatinizer

  attr_reader :text

  def piglatinize(text)
    vowels = "/a|e|i|o|u|A|E|I|O|U/"
    consonants = "/b|c|d|f|g|h|j|k|l|m|n|p|q|r|s|t|v|w|x|y|z|B|C|D|F|G|H|J|K|L|M|N|P|Q|R|S|T|V|W|X|Y|Z/"

    if text[0].match(vowels)
      text << "way"
    else
      new_word = ""
      while text.chars[0].match(consonants)
        new_word << text.chars[0]
        text = text[1..-1]
      end
      text << new_word + "ay"
    end
    text
  end

  def to_pig_latin(text)
    text.split.collect{|word| piglatinize(word)}.join(" ")
  end
end
