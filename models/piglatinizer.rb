class PigLatinizer

  def piglatinize(text)
    text = text.split(" ")
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    exceptions = ['pr', 'tr']
    pigged = []

    text.each do |word|
      if vowels.include?(word[0])
        pigged << word + 'way'
      elsif exceptions.include?(word[1..2])
        pigged << word[3..word.length-1] + word[0..2] + 'ay'
      elsif vowels.include?(word[1])
        pigged << word[1..word.length - 1] + word[0] + 'ay'
      else
        pigged << word[2..word.length - 1] + word[0..1] + 'ay'
      end
    end

    pigged.join(' ')
  end

end
