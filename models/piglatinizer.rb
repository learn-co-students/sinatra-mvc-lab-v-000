class PigLatinizer

  attr_accessor :words

  def initialize
    @words = words
  end

  def piglatinize(words)
    s1 = words.gsub(/[^a-z]/, ' ')
    arr = s1.scan(/\w/).shift
    arr1 = s1.split(arr).last
    arr2 = "#{arr1}#{arr}ay"

    # binding.pry

  end

end
