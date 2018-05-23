class PigLatinizer

  attr_accessor :text

  def initialize(text = '')
    @text = text
  end


  def piglatinize(text)
    arr_new = []

    if text[0].downcase.match(/a|e|i|o|u/)
      pig_word = text + "way"

    else
      text.split('').each do |x|

        if "aeiou".include?(x)
          break
        else
          arr_new << x
        end

        pig_word = (text.split('')[arr_new.length..-1] + arr_new).join + "ay"
      end
    end
    pig_word
  end

  def to_pig_latin(text)

    each_word = text.split(' ')

    each_word.map do |x|
      self.piglatinize(x)
    end.join(' ')
  end

end
