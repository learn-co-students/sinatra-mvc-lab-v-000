class PigLatinizer
  attr_accessor :words

  def initialize
    words = @words
  end

  def constant_begin(word)
#----------------   
    # begin with a constant, all letters before the initial vowel
    # are placed at the end of the word sequence. Then, "ay" (some people
    # just add "a") is added, as in the following examples:
    # "pig" → "igpay"
    # "banana" → "ananabay"
    # "trash" → "ashtray"
    # "happy" → "appyhay"
    # "duck" → "uckday"
    # "glove" → "oveglay"
    #return pig_a_tized word
#----------------
    if word.index(/[aeiou]/)
      vowel_idx = word.index(/[aeiou]/)
      word_pt1 = word.slice(0..(vowel_idx - 1))
      word_pt2 = word.slice(vowel_idx..word.length)
      pig_a_tized_word = word_pt2 + word_pt1 + "ay"
    else
      pig_a_tized_word = word + "ay"
    end
  end

  def vowel_begin (word)
#---------------- 
  # For words that begin with vowel sounds or a silent letter, 
  # one just adds "yay" to the end. Examples are:
  # "eat" → "eatyay"
  # "omelet" → "omeletyay"
  # "are" → "areyay"
  #return pig_a_tized word
#----------------  
  end


  def piglatinize(word)
      if word [/(\bI\b)|(\bi\b)|(\bA\b)|(\ba\b)/] == word
        word = word + "way"
      elsif word[/\b[aeiouAEIOU]\w+/] == word
        word = word + "way"
      else
        self.constant_begin(word)
      end
  end

  def to_pig_latin(words)
    pig_a_tized_array = []
    original_words_array = words.scan(/\w+/)
    original_words_array.each do |word|
      pig_a_tized_array << self.piglatinize(word)
    end
    pig_a_tized_array.join(" ")
  end

# def wtf
#   string1 ="Onceway uponway away imetay andway away eryvay oodgay imetay itway asway erethay asway away oocowmay omingcay ownday alongway ethay oadray andway isthay oocowmay atthay asway omingcay ownday alongway ethay oadray etmay away icenay ittlelay oybay amednay abybay uckootay"
#   string2 = "Onceway uponway aaay imetay andway aaay eryvay oodgay imetay itway asway erethay asway aaay oocowmay omingcay ownday alongway ethay oadray andway isthay oocowmay atthay asway omingcay ownday alongway ethay oadray etmay aaay icenay ittlelay oybay amednay abybay uckootay"
#   array1 = string1.split
#   array2 = string2.split
#   len_array = array1.length
#   matched_words = []
#   diff_words = []
#   i = 0
#   while i < len_array do
#     if array1[i] == array2[i]
#       matched_words << array1[i]
#       i += 1
#     else
#       diff_words << array1[i]
#       diff_words << array2[i]
#       i += 1
#     end
#   end
#   puts "matched = #{matched_words}"
#   puts "different = #{diff_words}"
# end



end #of class Piglatinizer





#Four score and seven years ago our fathers brought forth on this continent, a new nation, conceived in Liberty, and dedicated to the proposition that all men are created equal. Now we are engaged in a great civil war, testing whether that nation, or any nation so conceived and so dedicated, can long endure. We are met on a great battle-field of that war. We have come to dedicate a portion of that field, as a final resting place for those who here gave their lives that that nation might live. It is altogether fitting and proper that we should do this. But, in a larger sense, we can not dedicate -- we can not consecrate -- we can not hallow -- this ground. The brave men, living and dead, who struggled here, have consecrated it, far above our poor power to add or detract. The world will little note, nor long remember what we say here, but it can never forget what they did here. It is for us the living, rather, to be dedicated here to the unfinished work which they who fought here have thus far so nobly advanced. It is rather for us to be here dedicated to the great task remaining before us -- that from these honored dead we take increased devotion to that cause for which they gave the last full measure of devotion -- that we here highly resolve that these dead shall not have died in vain -- that this nation, under God, shall have a new birth of freedom -- and that government of the people, by the people, for the people, shall not perish from the earth.









