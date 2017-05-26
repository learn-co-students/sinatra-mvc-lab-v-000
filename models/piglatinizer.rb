require 'pry'
class PigLatinizer
  attr_accessor :words  
 
  def initialize
    @words = words
  end

  def piglatinize(word)
    #if words starts with  B, C, D, F, G, H, I, J, K, L, M, N, P, Q, R, S, T, V, X, Z, and usually W and Y
    #all letters before the initial vowel are placed at the end of the word sequence
    #pork = orkpay. 
    #set constants and vowels into seperate arrays
    #1. Split the word at the first vowel (word = "banana" parts = word.split(/([aeiou].*)/) => ["b", "anana"]
    #2. Place rest of the letters before the initial vowel/// Piglatin = parts.join[1][0]
    #3. Add "ay" to the end /// piglatin + "ay"
    constant = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "x", "y", "w", "z"]
    if word.downcase.start_with?("a","e","i","o","u")
      #join word with "way"
      word.to_s + "way"
    else
      split_word = word.split(/([aeiou].*)/)
      split_word[1] + split_word[0] + "ay"
    end
  end

  def to_pig_latin(sentence)
    #1. split the sentence => ["hi", "there", "friend"]
    #2. iterate over each element and use the piglatinize method
    #3. Construct the sentence back together with the new piglatinize words
   sentence.split.collect{|word| piglatinize(word)}.join(" ")
  end
end
