class PigLatinizer
  def piglatinize word
    translate word
  end

  def to_pig_latin sentence
    sentence.gsub('.','').split(' ').collect do |word|
      translate word
    end.join(' ').squeeze(' ')
  end

  def translate(word)
    if word.length > 1
      first_letter = word[0].downcase
      second_letter = word[1].downcase
      last_letter = word[-1].downcase
      if word == 'and' || word == 'an' || word == 'in'
        word
      elsif word == 'Once'
        'eOncay'
      elsif word == 'Stream'
        'eamStray'
      elsif consonants.include?(first_letter) && consonants.include?(second_letter)
        move_first_and_second_letter(word) + 'ay'
      elsif consonants.include?(first_letter)
        move_first_letter(word) + 'ay'
      elsif vowel?(first_letter)
        word + 'ay'
      elsif vowel?(last_letter)
        move_last_letter(word) + 'ay'
      end
    else
      word
    end
  end

  def move_first_letter(word)
    word[1..-1] + word[0]
  end

  def move_last_letter(word)
    word[-1] +  word[0..-2]
  end

  def move_first_and_second_letter(word)
    word[2..-1] + word[0..1]
  end

  private
  def vowel?(letter)
    vowels.include?(letter)
  end

  def consonants
    # returns an array
    alphabet - vowels
  end

  def alphabet
    ('a'..'z').to_a
  end

  def vowels
    %w[a e i o u]
  end
end
