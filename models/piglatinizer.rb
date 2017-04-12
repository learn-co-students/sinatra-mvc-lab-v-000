class PigLatinizer

  def piglatinize(word)
  vowels = ["a" , "e", "i", "o", "u"]
    if vowels.include?(word[0].downcase)
      word + "way"
    else
      word.gsub(/([^aeiou]+)(.+)/, '\2\1') + "ay"
    end

  end




  def to_pig_latin(user_phrase)
    splits= user_phrase.split(" ")
    t_phrase = splits.collect do |translate|
      piglatinize(translate)
      end
    t_phrase.join(" ")
  end

end
