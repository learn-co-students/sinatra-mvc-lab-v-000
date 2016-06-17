class PigLatinizer

  attr_accessor :phrase


  def initialize(phrase)
    @phrase = phrase
  end

  vowels = ['a', 'e', 'i', 'o', 'u']
   words = @phrase.split(" ").downcase
   result = []

   words.each_with_index do |word, i|
     translation = ''

     if vowels.include? word[0]
         translation = word + 'way'
         result << translation
     else
       word = word.split('')
           count = 0
           word.each_with_index do |char, index|
               if vowels.include? char
                 translation = words[i][count..words[i].length] + translation + 'ay'
            result << translation
              end
            end
          end
            result.join(' ')
        end

        end
