class PigLatinizer

  def piglatinize(word)
    if word.downcase.start_with?('a', 'e', 'i', 'o', 'u')
      word + "way"
    elsif word[0..2] =~ /[^aeiou]{3}/
      word[3..word.length] + word[0..2] + "ay"
    elsif word[0..1] =~ /[^aeiou]{2}/
      word[2..word.length] + word[0..1] + "ay"
    else
      word[1..word.length] + word[0] + "ay"
    end
  end

  def to_pig_latin(input)
    word_array = input.split(" ")
    arr = []
    word_array.each {|word|
      arr << piglatinize(word)
    }
    arr.join(" ")
  end


end
