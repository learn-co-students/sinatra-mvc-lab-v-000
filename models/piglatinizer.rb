class PigLatinizer
  def piglatinize(text)
    array = text.split(" ")
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
    text = pl.join(" ")
    text
  end
end
