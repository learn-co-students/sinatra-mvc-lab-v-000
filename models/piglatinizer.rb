class PigLatinizer
  attr_reader :text

  def initialize(user_phrase = nil)
    @text = user_phrase
  end

  ### Original Solution ###

  # def piglatinize(word)
  #   if word.start_with?('a','e','o','u','i','A','E','O','U','I')
  #     word << "way"
  #   else
  #     split_word = word.split('')
  #     rotation_num = 0
  #     split_word.each do |letter|
  #       if !letter.start_with?('a','e','o','u','i','A','E','O','U','I')
  #         rotation_num += 1
  #       else
  #         break
  #       end
  #     end
  #     changed_word = split_word.rotate(rotation_num) << "ay"
  #     changed_word.join
  #   end
  # end

  # def to_pig_latin(input_text = @text)
  #   split_phrase = input_text.split(' ')
  #   final_phrase = []
  #   split_phrase.each do |word|
  #     final_phrase << piglatinize(word)
  #   end
  #   final_phrase.join(' ')
  # end

  ### Refactored Solution ###
    # piglatinze method
      # use a vowels array instead of listing twice
      # you will then use .include? that looks at the vowels array, in conditional statements
      # use an until loop to remove the "break" keyword in a conditional statement (you can probably remove the counter, too)
    # to_pig_latin method
      # use the collect enumerator instead of each and a collecting array

  def piglatinize(word)
    vowels = ['a','e','o','u','i','A','E','O','U','I']
    split_word = word.split('')

    if vowels.include?(split_word[0])
      split_word << "way"
    else
      until vowels.include?(split_word[0])
        split_word.rotate!(1)
      end
      split_word << "ay"
    end
    split_word.join
  end

  def to_pig_latin(input_text = @text)
    input_text.split.collect {|word| piglatinize(word)}.join(' ')
  end
end



## Original Phrase ##
# "Once upon a time and a very good time it was there was a moocow coming
# down along the road and this moocow that was coming down along the road
# met a nice little boy named baby tuckoo"

## End Phrase ##
# "Onceway uponway away imetay andway away eryvay oodgay imetay itway
# asway erethay asway away oocowmay omingcay ownday alongway
# ethay oadray andway isthay oocowmay atthay asway omingcay ownday alongway
# ethay oadray etmay away icenay ittlelay oybay amednay abybay uckootay"

## Pig Latin Formula ##
# each word needs to be split
# if a word starts with a consonate, move the first group of consonates to the end and add 'ay'
# if a word starts with a vowel, just add 'way' at the end of it
# rejoin the changed word together
# move each changed word back into a final array
# rejoin the final array back together with spaces between each word
