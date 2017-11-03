class PigLatinizer

  def piglatinize(word)
    if word.downcase.start_with?('a', 'e', 'i', 'o', 'u')
      word + "way"
    elsif word[0..2] =~ /[^aeiou]{3}/
      
    end
  end


end
