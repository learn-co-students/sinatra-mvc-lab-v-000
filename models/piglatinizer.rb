class PigLatinizer

attr_reader :multi_words, :input

  def piglatinize(multi_words)
    multi_words.split.map do |word|
      translate(word)
      end.join(" ")
  end

  def translate(input)
    pig_string = " "
    if input[0] =~ /[aeiouAEIOU]/
      return input + 'way'
    elsif input[0] =~ /[^aeiouAEIOU]/ && input[1] =~ /[aeiouAEIOU]/
      return input[1..-1] + input[0] + 'ay'
    elsif input[0..1] =~ /[^aeiouAEIOU]/
      return input[2..-1] + input[0..1] + 'ay'
    else
      return input[0] + input + 'ay'
    end
  end
end
