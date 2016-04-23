class PigLatinizer


  def piglatinize(word)

   if word[0].match(/[aeiouAEIOU]/)
      word << "way"
   elsif word[1].match(/[aeiouAEIOU]/)
      v = word.slice!(0)
      word << v << "ay"
    elsif word[2].match(/[aeiouAEIOU]/)
       nova = word.slice!(0..1)
       word << nova << "ay"
    elsif word[3].match(/[aeiouAEIOU]/)
      moon = word.slice!(0..2)
      word << moon << "ay"
    end
  end

  def to_pig_latin(words)
    sp_sent = words.split(/\W+/)
    sp_sent.each do |word|
     piglatinize(word)
   end.join(' ')
  end



end
