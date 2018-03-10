class PigLatinizer

  def initialize
  end

  def piglatinize(word)
    return "" if !word
    letters = word.split('')
    index = 0;
    letters.each_with_index do |letter, i|
      if letter.match(/[aeiou]/i)
        index = i 
        break
      end
    end
    if index == 0
      return word << "way"
    else
      prefix = word.slice(0...index)
      postfix = word.slice(index..-1)
      return postfix << prefix << "ay"
    end
  end

  def to_pig_latin(phrase)
    return "" if !phrase 
    phrase.split(" ").map {|word| piglatinize(word)}.join(" ")
  end
end
