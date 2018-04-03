class PigLatinizer


  def piglatinize(text)
    words = text.split(" ")
    words.collect do |word|
      if word.match(/\A[aeiouAEIOU]/)
        word << "way"
      elsif word.match(/\A(?i:(?![aeiou])[a-z]){3}/)
        word << ("#{word[0,3]}")
        word[0,3] = ""
        word << "ay"
      elsif word.match(/\A(?i:(?![aeiou])[a-z]){2}/)
        word << ("#{word[0,2]}")
        word[0,2] = ""
        word << "ay"
      elsif !word.match(/\A[aeiouAEIOU]/)
        word << ("#{word[0,1]}")
        word[0,1] = ""
        word << "ay"
      end
    end
    words.join(" ")
  end

end