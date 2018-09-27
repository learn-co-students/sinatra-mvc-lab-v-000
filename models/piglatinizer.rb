class PigLatinizer

attr_reader :input, :multi_words, :word

  def piglatinize(multi_words)
    word_count = multi_words.split.size
    if word_count > 1
    multi_words.split.map do |word|
      translate(word)
      end.join(" ")
    end
  end

  def translate(input)
    pig_string = " "
    if input[0] =~ /[aeiou]/
      return input + 'way'
    elsif input[0] =~ /[^aeiou]/ && input[1] =~ /[aeiou]/
      return input[1..-1] + input[0] + 'ay'
    elsif input[0..1] =~ /[^aeiou]/
      return input[2..-1] + input[0..1] + 'ay'
    else
      return input[1..-1] + input[0] + 'ay'
    end
  end
end
