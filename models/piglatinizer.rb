class PigLatinizer
  attr_reader :words
  def initialize(words)
    @words = words
  end

  def separate_in_array
    words = @words.split(" ")
    words.map do |word|
      first_part = word[1..-1]
      second_part = word[0] + "ay"
      first_part + second_part
    end
  end

  def to_pig_latin
    self.separate_in_array.join(" ")
  end

  def piglatinize
    first_part = @words[1..-1]
    second_part = @words[0] + "ay"
    first_part + second_part
  end
end
