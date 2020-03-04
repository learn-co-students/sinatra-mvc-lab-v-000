class PigLatinizer
  attr_accessor :phrase

  def piglatinize(phrase)

    phrase.split.map do |word|
      first_character = word.chars.first

      while word.chars.first.match(/[^aeiouAEIOU]/)
        pig = word.chars.push(word.chars.first)
        pig.shift
        word = pig.join
      end

      first_character.match(/[^aeiouAEIOU]/) ? word.insert(-1, 'ay') : word.insert(-1, 'way')

      # the tests keep the capitalization tsk tsk. Here should bere Erehay. but it is ereHay
      # word.downcase == word ? word : word.capitalize
    end.join(' ')
  end

end
