class PigLatinizer
  attr_accessor :string

  def piglatinize(string)
    vowels = %w[A E I O U a e i o u]
    consonants = %w[B C D F G H J K L M N P Q R S T V W X Y Z b c d f g h j k l m n p q r s t v w x y z]

    if vowels.include?(string[0])
      string + "way"
    elsif consonants.include?(string[0]) && consonants.include?(string[1]) && consonants.include?(string[2])
      string[3..-1] +string[0..2] + 'ay'
    elsif consonants.include?(string[0]) && consonants.include?(string[1])
      string[2..-1] + string[0..1] + 'ay'
    elsif consonants.include?(string[0])
      string[1..-1] + string[0] + 'ay'
    else
      string
    end

  end

  def to_pig_latin(string)
    words = string.split(" ")
    pig_latin = []
    words.each do |word|
      pig_latin << piglatinize(word)

    end
    pig_latin.flatten.join(" ")
  end

end
