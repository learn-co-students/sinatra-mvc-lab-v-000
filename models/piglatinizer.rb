class PigLatinizer 


  def piglatinize(word)
   vowels = %w(a e i o u A E I O U)
   x = word.split(' ')
   answer = []
   x.each do |w|
    if vowels.include?(w[0])
      new = w + "way"
      answer << new 
    else 
      array = w.split /([aeiou].*)/
      new = array[1] + array[0] + "ay"
      answer << new 
    end
  end
    answer.join(' ')
  end
end