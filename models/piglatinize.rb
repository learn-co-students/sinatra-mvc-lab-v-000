class PigLatinizer
  attr_accessor :string

  def initialize()
  end

  def piglatinize(string)
    to_pig_latin(string)
  end

  def to_pig_latin(string)
    @string = string.split(" ")
    @string.map! do |word|
      if word[0].scan(/[aeouiAEIOU]/).count == 0
        cut_index = word =~(/[aeouiAEIOU]/)
        letters = word.slice!(0..cut_index-1)
        word = word + letters + "ay"
      else
        word = word + "way"
      end
      if word =~ /[[:punct:]]/
        punct_index = word =~ /[[:punct:]]/
        punct = word.slice!(punct_index)
        word = word + punct
      end
      word
    end
    @string = @string.join(" ")
  end
end
