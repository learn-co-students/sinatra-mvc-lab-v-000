require 'pry'
class PigLatinizer

  def piglatinize(words)
    words.split(" ").map { |word| pig_latin_logic(word) }.join(" ")
  end

  def to_pig_latin(word)
    (word.split(' ').inject([]) {|piglatinized, word| piglatinized << piglatinize(word)} ).join(' ')
  end

  def pig_latin_logic(word)
    starts_with_letter?(word) ? substitution_rule_chooser(word) : word
  end

  def substitution_rule_chooser(word)
    starts_with_vowel?(word) ? vowel_rule(word) : consonant_rule(word)
  end

  def starts_with_letter?(word)
    word[0] =~ /[a-zA-Z]/ && !(word =~ /\Ahttp/i)
  end

  def starts_with_vowel?(word)
    word[0] =~ /[AEIOUaeiou]/
  end

  def vowel_rule(word)
    word.sub(/(\w+)/, '\1way')
  end

  def consonant_rule(word)
    word.sub(/(\A[^AEIOUaeiou_\W\d]+)(\w+)/, '\2\1ay')
  end

end
