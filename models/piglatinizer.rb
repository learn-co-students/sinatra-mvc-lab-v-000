class PigLatinizer
  attr_accessor :word

  def piglatinize(word)
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    words = word.split(' ')
    result = []

    words.each do |word|
      if vowels.include?(word[0])
        piglatinized = word + 'way'
        result << piglatinized
      elsif !vowels.include?(word[0]) && !vowels.include?(word[1]) && !vowels.include?(word[2])
        piglatinized = word[3..-1] + word[0..2] + 'ay'
        result << piglatinized
      elsif !vowels.include?(word[0]) && !vowels.include?(word[1])
        piglatinized = word[2..-1] + word[0..1] + 'ay'
        result << piglatinized
      else
        piglatinized = word[1..-1] + word[0] + 'ay'
        result << piglatinized
      end
    end

    result[0]
  end

  def to_pig_latin(phrase)
    words = phrase.split(/\W+/)
    sentence = []

    words.each do |word|
      sentence << piglatinize(word)
    end

    sentence.join(' ')
  end
end
