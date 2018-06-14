class PigLatinizer

  def piglatinize(phrase)
    array = phrase.split(" ")
    pl = []
    array.each do |w|
      word = w.split("")
      if (/[aeiouAEIOU]/) === word.first
        word << "way"
        pl << word.join
      else
        until (/[aeiouAEIOU]/) === word.first
          word << word.first
          word.shift
        end
          word << "ay"
          pl << word.join
      end
    end
    phrase = pl.join(" ")
    phrase
  end
end
