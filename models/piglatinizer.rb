
class PigLatinizer

  def piglatinize(text)
    vowels = ['a', 'e', 'i', 'o', 'u']

    # binding.pry

    if text.strip.include?(' ')
      seperated = text.split(' ')

      formatted = seperated.collect do |word|
        if word.length < 2
          if vowels.include?(word)
            "#{word}way"
          else
            "#{word}ay"
          end
        elsif vowels.include?(word[0].downcase)
          "#{word}way"
        else
          matched = word.match(/^[^aeiou]+/i)
          back = matched.post_match
          front = matched[0]
          "#{back}#{front}ay"
        end
      end

      formatted.join(' ')
    else
      if text.length < 2
        if vowels.include?(text.downcase)
          "#{text}way"
        else
          "#{text}ay"
        end
      elsif vowels.include?(text[0].downcase)
        "#{text}way"
      else
        matched = text.match(/^[^aeiou]+/i)
        back = matched.post_match
        front = matched[0]
        "#{back}#{front}ay"
      end
    end

  end

end
