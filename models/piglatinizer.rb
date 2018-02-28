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
      ary.push("way")
      ary.join("")
    else
      moved = ary.slice(0,vindex)
      ary.shift(vindex)
      ary.push(moved,"ay")
      ary.join("")
    end
  end

  def to_pig_latin(sentence)
    ary = sentence.split(" ")
    ary.map!{|i| self.piglatinize(i)}
    ary.join(" ")
  end
end
