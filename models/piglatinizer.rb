class PigLatinizer

  def piglatinize(phrase)
    words = phrase.split(" ")
    phr = words.map do |word|
      finished_w = []
      if word =~ /\A[AEIOUaeiou]/
        finished_w << word << "way"
      else
        split_w = word.split(/([aeiou].*)/)
        finished_w << split_w[1] << split_w[0] << "ay"
      end
      finished_w.join('')
    end
    return phr.join(" ")
  end
end
