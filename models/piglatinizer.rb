class PigLatinizer

  def piglatinize(word)
    vowel = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    s1 = word.split('') #put word into array of letters
    s2 = word.split('')
    if vowel.include?(s1[0])
      s1.push("way")
      return s1.join.to_s
    else
      s1.each.with_index do |letter, i|
        break if vowel.include?(letter)
           #if you encounter a vowel get out of the each loop
           s2.shift
          #s2.delete_at(i) #can't do this because it changes the original array index
          s2.push(letter)
      end #each
      s2.push("ay").join
    end #if
  end #method piglatinize ending

  def to_pig_latin(words)
    words.split.collect {|word| piglatinize(word)}.join(" ")
    #split into array
    #collect results of piglatinizes
    #join by a space
  end

end
