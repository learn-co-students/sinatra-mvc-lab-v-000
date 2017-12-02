class PigLatinizer
  

  def piglatinize(word)
    vowels = ["a","e","i","o","u","A","E","I","O","U"]
        after_vowels = []

     if vowels.include?(word[0])
           word + "way"
      else
           until vowels.include?(word[0])
           after_vowels << word[0]
           word[0] = ""
           end
           word.split("")
           word = word +  after_vowels.join("")
           word + "ay"
       end
    # text.split(" ").map do |word|
    #   word = word.gsub(/[\W]/, "")
    #   if word.downcase.chars.first.match(/[aeiou]/)
    #     word + "way"
    #   elsif word.downcase.chars.first.match(/^[^aeiou]/)
    #     first_letters = word.match(/^[^aeiouAEIOU]+/).to_s
    #     word.gsub(/^[^aeiou]+/, "") + first_letters + "ay"
    #   end
    # end.join(" ")
  end

  def to_pig_latin(sentence)
    array = sentence.split(" ").map do |word|
    piglatinize(word)
  end
  array.join(" ")
  end
end
