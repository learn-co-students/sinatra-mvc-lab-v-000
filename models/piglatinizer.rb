class PigLatinize
  def initialize(text)
    @text = text
  end

  def piglatinize
    arr = text.split(" ")
    arr2 = arr.map {|word| word.reverse + "ay"}
    arr2.join(" ")
  end

end
