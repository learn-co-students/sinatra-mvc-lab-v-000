class PigLatinizer
  attr_accessor :text

  def initialize(text = nil)
    @text = text
  end

  def piglatinize(word)
    new_string = word.split('')
    until new_string.first.match(/[aeiou]/) do
      letter = new_string.shift
      new_string << letter
    end
    new_string << 'a' << 'y'
    new_string.join
  end

  def to_pig_latin(text)
    text_block = text.gsub('.', '').split(' ')
    text_block.map{ |word| dont_piglatinize?(word) ? word : piglatinize(word)}.join(' ')
  end

  def dont_piglatinize?(word)
    ['i', 'and', 'a', 'in', 'an'].include?(word.downcase)
  end
end
