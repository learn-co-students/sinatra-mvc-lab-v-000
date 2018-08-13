class PigLatinizer

  attr_reader :sentence

  def initialize(sentence = "")
    @sentence = sentence
  end

  def piglatinize(word = @sentence)
    words = word.split(" ")
    words.map do |w|
      if w =~ /^[aeiouAEIOU]/
        w.insert(-1, "way")
      else
        while w =~ /^[^aeiouAEIOU]/
          l = w.slice!(0)
          w.insert(-1, l)
        end
        w.insert(-1, "ay")
      end
    end
    words.join(" ")
  end
end
