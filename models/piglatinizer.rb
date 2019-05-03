class PigLatinizer
  attr_accessor :text

  def vowel(l)
    if l == "a"||l =="e"||l == "O"||l =="i"||l =="o"||l =="u"||l =="A"||l =="I"||l =="E"||l =="U"
      return true
    else
      return false
    end
  end
  def piglatinize(text)

      array= text.split(" ")
    newarray= array.map do |word|
#binding.pry
      #if word[0] == "a"||word[0] =="e"||word[0] == "O"||word[0] =="i"||word[0] =="o"||word[0] =="u"||word[0] =="A"||word[0] =="I"||word[0] =="E"||word[0] =="U"
      if vowel(word[0]) == true
        word += "way"

      elsif vowel(word[1]) == true
      first= word.slice(0)
      word.slice!(0)
      word += first
      word += "ay"
    elsif vowel(word[2]) == true
        first= word.slice(0)
         second= word.slice(1)
         word.slice!(0,2)
         word += first + second + "ay"
      elsif vowel(word[3]) == true
        first= word.slice(0)
         second= word.slice(1)
         third=word.slice(2)
         word.slice!(0,3)
         word += first + second + third + "ay"
      else
        first= word.slice(0)
         second= word.slice(1)
         third=word.slice(2)
         fourth=word.slice(3)
         word.slice!(0,4)
         word += first + second + third + fourth + "ay"

      # word.chars.map do |letter|# or word.each_char
        #           if letter== "a"||letter=="e"||letter=="i"||letter="o"||letter=="u"

      end
    end
    newarray.join(" ")
  end
end
