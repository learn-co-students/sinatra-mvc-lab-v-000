class PigLatinizer
  attr_accessor :text

  def initialize

  end

  def convert(text)
    if text.strip.include?(" ")
      self.to_pig_latin(text)
    else
      self.piglatinize(text)
    end
  end

def piglatinize(text)
  vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
  lower = ('a'..'z').to_a
  upper = ('A'..'Z').to_a
  consonants = lower + upper - vowels

  if vowels.include?(text[0])
    text + 'way'
  elsif consonants.include?(text[0]) && consonants.include?(text[1]) && consonants.include?(text[2])
    text[3..-1] + text[0..2] + 'ay'
  elsif consonants.include?(text[0]) && consonants.include?(text[1])
    text[2..-1] + text[0..1] + 'ay'
  elsif consonants.include?(text[0])
    text[1..-1] + text[0] + 'ay'
  else
    text + 'way'
  end
end

  def to_pig_latin(text)
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    words = text.split(' ')
    result = []

    words.each_with_index do |word, i|
    translation = ''
    qu = false
    if vowels.include? word[0]
        translation = word + 'way'
        result.push(translation)
    else
        word = word.split('')
        count = 0
        word.each_with_index do |char, index|
            if vowels.include? char
                # handle words that start with 'qu'
                if char == 'u' and translation[-1] == 'q'
                    qu = true
                    translation = words[i][count + 1..words[i].length] + translation + 'uay'
                    result.push(translation)
                    next
                end
                break
            else
                # handle words with 'qu' in middle
                if char == 'q' and word[i+1] == 'u'
                    qu = true
                    translation = words[i][count + 2..words[i].length] + 'quay'
                    result.push(translation)
                    next
                else
                    translation += char
                end
                count += 1
            end
        end
        # translation of consonant words without qu
        if not qu
            translation = words[i][count..words[i].length] + translation + 'ay'
            result.push(translation)
        end
    end

end
sentence = result.join(' ')
end
end
