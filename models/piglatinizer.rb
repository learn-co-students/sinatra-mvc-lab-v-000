class PigLatinizer
   attr_reader :text
  def initialize
     @text = text
  end

  def piglatinize(text)
    words = text.split
    piglatin = []
    vowels = ['a', 'e', 'i','o', 'u']
    words.each do |word|
      pig = word.split('')
      i_first_vowel = pig.find_index{|letter| vowels.include?(letter.downcase)}
      if i_first_vowel == 0
        pig << "way"
        piglatin << pig.join
      else
        pig.rotate!(i_first_vowel)
        pig << "ay"
        piglatin << pig.join
      end
    end
    piglatin.join(' ')
  end

  def to_pig_latin(sentence)
    piglatinize(sentence)
  end
end
