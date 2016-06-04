require 'pry'
class PigLatinizer

  def piglatinize(str)
    vowels = %w[a e i o u]
    arr = str.split('')
    if vowels.include?(str[0].downcase)
      str << "way"  #if the first letter in the user's word includes a vowel, all "way" to the end
    else
      while not vowels.include?(arr[0])
        arr.rotate! #changes the array so the element at index 1 will be at the front of the array and index 0 will be at the end.
      end
      arr.join("") << "ay" #and then add "ay" to the end of the rotated array
    end
  end

#take a user's sentence and piglatinizes each word, then joins it back into a sentence
  def to_pig_latin(words)
    words_array = words.split(" ")
    words_array.map do |word|
        piglatinize(word)
    end.join(" ")
  end
end
