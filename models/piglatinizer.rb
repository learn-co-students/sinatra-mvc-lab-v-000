class PigLatinizer

  def start_with_vowel?(word)
    'aeiouAEIOU'.include?(word[0])
  end
  
  def multi_consonant(word)
    num = 0
    word.each_char { |chr| start_with_vowel?(chr) ? break : num+=1}
    switcheroo(word, num)
  end

  def switcheroo(word, num)
    start = word[0...num]
    finish = word[num..-1]
    finish+start
  end

  def add_ay(word)
    word+'ay'
  end

  def piglatinize(text)
    text.split(' ').map do |word|
      if start_with_vowel?(word)
        word+'way'
      else
        add_ay(multi_consonant(word))
      end
    end.join(' ')
  end

  def to_pig_latin(word)
    piglatinize(word)
  end
  
end