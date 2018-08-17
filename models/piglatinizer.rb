require 'pry'
class PigLatinizer

  def piglatinize(input)
    w = input.split(" ")
    w.collect do |word|
      if word[0].match(/[aAeEiIoOuU]/)
        word+"way"
      elsif word[1].match(/[aAeEiIoOuU]/)
        word[1..-1]+word[0]+"ay"
      elsif word[2].match(/[aAeEiIoOuU]/)
        word[2..-1]+word[0..1]+"ay"
      else
        word[3..-1]+word[0..2]+"ay"
      end
    end.join(" ")
  end
end
