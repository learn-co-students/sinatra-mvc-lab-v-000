class PigLatinizer

  def piglatinize(words)
    result = []
    words_split = words.split(" ")

    words_split.each do |word|
      if /[aeiouAEIOU]/.match(word[0])
        result << (word+'way')
      else
        split = word.split(/([aeiou].*)/)
        result << split[1]+split[0]+'ay'
      end
    end
    result.join(" ")
  end

end
