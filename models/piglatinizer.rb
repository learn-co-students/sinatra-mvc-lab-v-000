class PigLatinizer

  attr_accessor :words

  def initialize(words = nil)
    @words = words
  end

  def piglatinize(word)
    words = word.split
    vowels = ["a","e","i","o","u"]
    (words.collect do |i|
      if vowels.include?(i[0].downcase)
        "#{i}way"
      elsif !vowels.include?(i[0].downcase) && !vowels.include?(i[1].downcase) && !vowels.include?(i[2].downcase)
        "#{i[3..-1]}#{i[0]}#{i[1]}#{i[2]}ay"
      elsif !vowels.include?(i[0].downcase) && !vowels.include?(i[1].downcase)
        "#{i[2..-1]}#{i[0]}#{i[1]}ay"
      else
        "#{i[1..-1]}#{i[0]}ay"
      end
    end).join(" ")

  end

end
