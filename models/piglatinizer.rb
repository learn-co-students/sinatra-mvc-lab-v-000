class PigLatinizer

  def piglatinize(word)
    if word[0][/[aeiouAEIOU]/] && word.length > 2
      if word[/[aeiou]\z/]
        word[/[aeiou]\z/] + word = word 
        word[0, word.length - 1] + "ay"
      else
        word + "ay"
      end
    elsif word.length > 2
      word[/[aeiou]\w*\b/] + word[/\A[^aeiou]{1,2}/] + "ay"
    else
      word
    end
  end

  def to_pig_latin(string)
    pigged = []
    string.split(" ").map do |word|
      pigged << piglatinize(word)
    end
    pigged.join(" ").strip
  end



end 