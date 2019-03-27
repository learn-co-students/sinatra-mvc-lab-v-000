require 'pry'
class PigLatinizer

  def piglatinize(text)
    words = text.split(" ")
    translated_words = words.collect do |word|
      consonant = word.scan(/\A[bcdfghjklmnpqrstvwxyz]*/i)
      if consonant.first != ""
        suffix = "ay"
      else
        suffix = "way"
      end
      word.gsub("#{consonant.first}", "") + "#{consonant.first}" + suffix
    end

    translated_phrase = translated_words.join(" ")
    translated_phrase
  end
end
