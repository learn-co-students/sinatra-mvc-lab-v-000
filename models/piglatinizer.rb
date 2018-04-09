class PigLatinizer

  def piglatinize(input)
    input.split(" ").length == 1 ? word(input) : sentence(input)
  end

  def consonant?(letter)
    letter.match(/[^aeiouAEIOU]/)
  end

  def word(input)
    if !consonant?(input[0])
      input = input + "w"
    elsif consonant?(input[0]) && consonant?(input[1]) && consonant?(input[2])
      input = input.slice(3..-1) + input.slice(0,3)
    elsif consonant?(input[0]) && consonant?(input[1])
      input = input.slice(2..-1) + input.slice(0,2)
    else
      input = input.slice(1..-1) + input.slice(0)
    end
    input << "ay"
  end

  def sentence(input)
    input.split.map { |w| word(w) }.join(" ")
  end
end
