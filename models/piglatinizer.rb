def is_vowel l
  ['a','e','i','o','u'].include?(l.downcase)
end

def transform w
  i=0
  while(!is_vowel(w[i])) do
    i+=1
  end
  if i==0 then w+"way" else w[i..-1]+w[0..(i-1)]+"ay" end
end

class PigLatinizer
  def piglatinize s
    array_of_words=s.split
    res=""
    array_of_words.each{|w| res+=' '+transform(w)}
    res[1..-1]
  end
  def to_pig_latin s
    piglatinize s
  end
end
