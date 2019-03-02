class PigLatinizer
  attr_accessor :text
  
  def piglatinize(text)
    text2 = text.split
    pig_text = []
    vowel = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    if text2.count == 1 && vowel.include?(text2[0])
      pig_text << "#{text2[0]}way"
      latin = pig_text[0]
    else text2.each do |word|
      array = word.split("")
      if vowel.include?(array[0])
        pig_text << "#{word}way"
      elsif vowel.include?(array[1])
        stem = array[1..-1].join("")
        add_on = array[0].to_s
        pig_text << "#{stem}#{add_on}ay"
      elsif vowel.include?(array[2])
        stem = array[2..-1].join("")
        add_on = array[0..1].join("")
        pig_text << "#{stem}#{add_on}ay"
      elsif vowel.include?(array[3])
        stem = array[3..-1].join("")
        add_on = array[0..2].join("")
        pig_text << "#{stem}#{add_on}ay"
      end
      latin = pig_text.join(" ")
    end
    latin
  end
end
end
