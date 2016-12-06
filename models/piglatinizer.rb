class PigLatinizer

  #attr_accessor :input

  def to_pig_latin(input)
    words = input.split(" ")
    words.collect do |word|
      piglatinize(word)
    end.join(" ")
  end

  def piglatinize(input)
    vowels = ["a", "e", "i", "o", "u"]
      if vowels.include?(input[0].downcase)
        return "#{input}way" 
      elsif !vowels.include?(input[0].downcase) && !vowels.include?(input[1].downcase) && !vowels.include?(input[2].downcase)
        return (input[3..-1] + input[0..2] + "ay")
      elsif !vowels.include?(input[0].downcase) && !vowels.include?(input[1].downcase)
        return (input[2..-1] + input[0..1] + "ay")
      else
        return (input[1..-1] + input[0] + "ay")
      end
  end

end