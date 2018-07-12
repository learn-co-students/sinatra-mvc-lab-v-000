
class PigLatinizer

  def process(word)
    vowels = ['a', 'e', 'i', 'o', 'u']

    if word.length == 1 && !vowels.include?(word.downcase)
      "#{word}ay"
    elsif vowels.include?(word[0].downcase)
      "#{word}way"
    else
      matched = word.match(/^[^aeiou]+/i)
      back = matched.post_match
      front = matched[0]
      "#{back}#{front}ay"
    end
  end

  def piglatinize(text)
    if text.include?(' ')
      seperated = text.strip.split(' ')

      formatted = seperated.collect do |word|
        process(word)
      end

      formatted.join(' ')
    else
      process(text.strip)
    end
  end

end
