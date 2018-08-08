class PigLatinizer

  def piglatinize(phrase)
    phrase_array = phrase.split(" ")
    phrase_array.collect do |word|
      if word[0].downcase.match(/[aeiou]/)
        word+"way"
      elsif word[1].downcase.match(/[aeiou]/)
        word[1..-1]+word[0]+"ay"
      elsif word[2].downcase.match(/[aeiou]/)
        word[2..-1]+word[0..1]+"ay"
      else
        word[3..-1]+word[0..2]+"ay"
      end
      #binding.pry
    end.join(" ")
  end
end
