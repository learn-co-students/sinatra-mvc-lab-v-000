require 'pry'

class PigLatinizer

  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

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

          s2.delete_at(i)
          s2.push(letter)
         #if
      end #each
      s2.push("ay").join
      #s1.push("ay").join
    end #if

  end #method piglatinize ending


  def modified
    #consonant = [B, C, D, F, G, H, J, K, L, M, N, P, Q, R, S, T, V, X, Z, W, Y]
    vowel = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

    arr1 = phrase.split(' ') #put phrase into array
    modified_array = arr1.collect do |word| #each word in arr1
      s1 = word.split('') #put word into array of letters
s2 = word.split('')
      if vowel.include?(s1[0])
        s1.push("way").join
      else
        s1.each.with_index do |letter, i|
          if vowel.include?(letter)
            break #if you encounter a vowel get out of the each loop
          else
            s2.delete_at(i)
            s2.push(letter)
            #s1.shift #remove current first letter
            #s1.push(letter) #add current letter to end of array
          end #if
        end #each
        s2.push("ay").join
        #s1.push("ay").join
      end #if
    end #each
    modified_array.join(" ")
  end #method

  def test
    v = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    @phrase.downcase
  end

end
