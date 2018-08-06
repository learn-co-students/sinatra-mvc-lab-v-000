class PigLatinizer

  # def initialize(phrase)
  #   @phrase = phrase.downcase.piglatinize(phrase)
  # end

  def piglatinize(phrase)
    arr = phrase.downcase.split(" ")
    arr2 = arr.collect {|word| word.split("").rotate(1).join<<"ay"}
    arr2.join(" ")
  end
end
