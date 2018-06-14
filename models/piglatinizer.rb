class PigLatinizer

  def piglatinize(phrase)
    array = phrase.split(" ")
    array.each do |w|
      word = w.split(/[aeiou]/)
      pl = []
      if word[0].include?(/[aeiou]/)
        word << "way"
        pl << word.join
      else
        word.last = arr.first
        word.unshift
        word << "ay"
        pl << word.join
      end
      puts pl
      binding.pry
    end
  end
end
