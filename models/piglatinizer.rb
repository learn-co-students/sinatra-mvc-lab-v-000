class PigLatinizer
  
  def piglatinize(word)
    @word = word.downcase
    vowel = "aeiou"
    word = word.split()
    word.map do |p|
      if p.length == 1 
        "#{p}way"
      elsif vowel.include? p[0].downcase
        "#{p}way"
      else
        pig_word = p.split(/([aeiou])/,2)
        "#{pig_word[1]}#{pig_word[2]}#{pig_word[0]}ay"
      end
    end.join(" ")
  end
  
end