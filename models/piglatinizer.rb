class PigLatinizer

  def piglatinize(word)

    vowels = ["a", "e", "i", "o", "u"]
    word_array = word.split("")

    if word_array.count == 1
      "#{word + "way"}"
    elsif vowels.include?(word[0].downcase)
      "#{word + "way"}"
    else
      index = word_array.find_index{|l| vowels.include?(l)}.to_i #index of first vowel
      "#{word_array.drop(index).join + word[0..index - 1] + "ay"}"
    end
  end


  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
