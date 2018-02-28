class PigLatinizer

  #method that turns any word into piglatin

  def piglatinize(name)
    if name[0].downcase.match(/[aeiou]/)
      name = name + "way"
    else
      until name.split('')[0].downcase.match(/[aeiou]/)
        name = name.split('').rotate(1).join
      end
      name = name.split('').join + "ay"
    end
    name
  end

  def to_pig_latin(phrase)
    phrases = Array.new
    phrase.split(' ').each do |name|
      phrases << piglatinize(name)
    end
    phrases.join(' ')
  end


end
