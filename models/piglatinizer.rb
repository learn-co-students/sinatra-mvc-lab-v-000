class PigLatinizer

attr_accessor :text

def initialize
  @text = text
end

def piglatinize(text)
  words = text.split
  new_words = []
  words.each do |word|
    if word[0].scan(/[aeiou]/i)[0]
      new_word = word + "way"
    else
      first = word[/\A[^aeiou]+/i]
      word.slice!(first) #delete first element
      new_word = word + first + "ay"
    end
    new_words << new_word
  end
  new_text = new_words.join(" ")
  new_text
end

end
