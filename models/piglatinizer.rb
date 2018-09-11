require 'pry'

class PigLatinizer


  def piglatinize(sentence)
    text = sentence.split(" ") #breaks words of sentence into array
    iterate_words(text) #individually piglatinizes each word, through iterate_words method and returns full sentence
  end

  def iterate_words(words)
    pig_array = []
    #don't want to downcase all because need to maintain the random capitalization-like beginning of sentences
    words.each do |word| #iterates through array of words
      pword = piggify(word) #piglatinizes individual word and returns word
      pig_array << pword
    end
    piggest_array = pig_array.join(" ") #turning array of words into sentence
    piggest_array
  end

  def piggify(word)
    #needs to piglatinize indiviual word according to test
      new_word = word.split("")
      vowels = ["a", "e", "i", "o", "u"]
      #all words that start with vowel should not be sent to end
      #rule where if first two letters are consonants, must both go to end
        if vowels.include?(new_word[0].downcase) #if first letter is vowel rule
          first = new_word[0]
          new_word
        elsif vowels.include?(new_word[1].downcase) #if first letter only is consonant
            first = new_word[0]
            new_word.shift
            new_word << first
        elsif vowels.include?(new_word[0].downcase) || vowels.include?(new_word[1].downcase) || vowels.include?(new_word[2].downcase)
            #if first two letters are consonants
            first = [new_word[0], new_word[1]]
            new_word.shift
            new_word.shift
            new_word << first
        else #so with words like spray, all three consonants at beg will carry over
          first = [new_word[0], new_word[1], new_word[2]]
          new_word.shift
          new_word.shift
          new_word.shift
          new_word << first
        end
        if vowels.include?(first[0].downcase) #words that start with vowels need way at end
          text_arrayed_ay = new_word << ["w", "a", "y"]
        else
          text_arrayed_ay = new_word << ["a", "y"]
        end
      pig_text = text_arrayed_ay.flatten.join("") #makes back into word
      pig_text

  end

end
