class PigLatinizer

  def initialize(text = nil)
    @text = text
  end

  def text
    @text
  end

  def to_pig_latin(string)
    words = string.split(" ")

    newstring = ""
    words.each do |word|
      newstring << "#{piglatinize(word)} "
    end

    newstring.strip
  end

  def piglatinize(word)
    arr = word.split("")
    letter = arr.shift
    arr << "#{letter}ay "
    arr.join.strip
  end

end