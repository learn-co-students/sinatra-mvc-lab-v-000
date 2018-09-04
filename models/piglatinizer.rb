class PigLatinizer
  attr_reader :text
 
  def initialize
    @text = text
  end
 
  def piglatinize(text)
    if text =~ /\A[aeiou]/i
      arr = text.split("")
      arr << "way"
    else 
      arr = text.split("")
      arr << arr.shift
      arr << "a"
      arr << "y"
    end
    arr.join
  end
 
end