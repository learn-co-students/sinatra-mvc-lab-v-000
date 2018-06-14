class PigLatinizer

  def piglatinize(phrase)
    array = phrase.split(" ")
    array.each do |w|
      word = w.split(/[aeiou]/)
      pl = []
      if word[0].include?(/[aeiou]/)
        word << "way"
      else
        word.last = arr.first
        word.unshift
        word << "ay"
      end
      pl << word.join
    end
    pl.join(" ")
  end

end
