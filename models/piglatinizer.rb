class PigLatinizer

attr_reader :input, :multi_words, :word

  def piglatinize(input)

    if input[0] =~ /[aeiou]/
      return input + 'way'
    elsif input[0] =~ /[^aeiou]/ && input[1] =~ /[aeiou]/
      return input[1..-1] + input[0] + 'ay'
    elsif input[0..1] =~ /[^aeiou]/
      return input[2..-1] + input[0..1] + 'ay'
    else

    end
  end


  def piglatinize_words(multi_words)
    multi_words.split.map! do |word|
      piglatinize(word)
    end.join(" ")
  end
end
