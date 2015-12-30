class PigLatinizer

piggie = PigLatinizer.new


  def piglatinize(word)
    vowels = ["a","e","i","o","u","A","E","I","O","U"]
    bad = ["i","a","and","an","in"]
    word.gsub!(/[.,]/, "")
    if bad.include?(word)
      word
    elsif !vowels.include?(word[0])
      cons = ""
      while !vowels.include?(word[0])
        cons << word[0]
        word = word.split("")[1..-1].join("")
      end
      word + cons + "ay"
    else
      word + "way"
    end
  end

  def to_pig_latin(phrase)
    p = phrase.split(" ").map do |word|
      piglatinize(word)
    end
    p.join(" ")
  end

piggie

end