require 'pry'

class PigLatinizer

  def to_pig_latin(initial_sentence)
    @final_sentence = []
    sentence_array = initial_sentence.split(' ') # removed @ from words
    sentence_array.each do |w|
      @final_sentence << piglatinize(w)
    end
    @final_sentence.join(' ')
  end

  def piglatinize(w) # made separate method for a single word, just to get lab specs to pass
    vowel = ['a', 'e', 'i', 'o', 'u']
    digraphs = ["bl", "br", "ch", "ck", "cl", "cr", "dr", "fl", "fr", "gh", "gl", "gr", "ng", "ph", "pl", "pr", "qu", "sc", "sh", "sk", "sl", "sm", "sn", "sp", "st", "sw", "th", "tr", "tw", "wh", "wr"]
    trigraphs = ["nth", "sch", "scr", "shr", "spl", "spr", "squ", "str", "thr"]

    first_vowel = (w =~ /[aeiouAEIOU]/).to_i
    d = w.downcase
    w_arr = w.split('')

    if vowel.include?(d[0]) # words that begin with vowel sounds, add  "way" / "yay" / "ay" to the end: "eat" = "eatway" or "eatay"
      pl_word = w + "way"
    elsif w[3] != nil && trigraphs.include?(d[0]+d[1]+d[2]) # words begin with consonant clusters, the whole sound is added to the end "cheers" = "eerschay"
      tri_arr = w_arr[3..w_arr.length]
      tri_arr << [w_arr[0], w_arr[1], w_arr[2], ['ay']]
      pl_word = tri_arr.join('')
    elsif digraphs.include?(d[0]+d[1]) # words begin with consonant clusters, the whole sound is added to the end "cheers" = "eerschay"
      di_arr = w_arr[2..w_arr.length]
      di_arr << [w_arr[0], w_arr[1], 'ay']
      pl_word = di_arr.join('')
    else # For words that begin with consonant sounds, all letters before the  initial vowel are placed at the end of the word sequence. Then, "ay" is added, as in    "pig" = "igpay"
      cons_arr = w_arr[(first_vowel)..w_arr.length]
      cons_arr << [w_arr[0..(first_vowel-1)], "ay"]
      pl_word = cons_arr.join('')
    end
      pl_word
  end
end
