class PigLatinizer
  def piglatinize(word)
    ary = word.split("")
    lowercased = word.downcase
    ary2 = lowercased.split("")

    #find index of the first vowel
    vindex = ary2.find_index{|i| ["a","e","i","o","u"].any?{|v| v == i}}
    #binding.pry

    #For words that begin with consonant sounds
    #all letters before the initial vowel are placed at the end of the word sequence. Then, "ay" is added,

    lowercased = word.downcase
    if ["a","e","i","o","u"].any?{|vowel| lowercased[0] == vowel}
      ary.push(word[0],"way")
    else
      ary.push(word[0],"ay")
    end
    ary.shift
    return ary.join("")
  end
end
