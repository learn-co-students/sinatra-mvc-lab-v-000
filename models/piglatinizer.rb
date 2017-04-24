class PigLatinizer

def piglatinize(word)
if !!(word.downcase =~ /^[aeiou]/)
     word + "way"
   else
    word.gsub(/\A[^aeiou]+/,"") + /\A[^aeiou]+/.match(word)[0] + "ay"
    end
  end

  def to_pig_latin(phrase)
    words = phrase.split(" ")
   pig_array = words.collect do |word|
       piglatinize(word)
   end
  pig_array.join(" ")
   end
end
