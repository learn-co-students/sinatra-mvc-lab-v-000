class PigLatinizer

  def initialize

  end

  def piglatinize(word)

    if ["a", "e", "i", "o","u","y"].include?(word[0].downcase)
      pigword = word + "way"
    elsif ["a", "e", "i", "o","u","y"].include?(word[1].downcase)
      array = word.scan(/\w/)
      array << array[0] + "ay"
      array.shift
      array.join
    elsif ["a", "e", "i", "o","u","y"].include?(word[2].downcase)
      array = word.scan(/\w/)
      array << array[0] + array[1] + "ay"
      array.shift(2)
      array.join
    elsif ["a", "e", "i", "o","u","y"].include?(word[3].downcase)
      array = word.scan(/\w/)
      array << array[0] + array[1] + array[2] + "ay"
      array.shift(3)
      array.join
    end
  end

  def to_pig_latin(sentence)
    array = sentence.split(' ')
    array = array.collect { |word| piglatinize(word) }
    array.join(' ')
  end
end
