class PigLatinizer

  attr_accessor :input

   def piglatinize(words)
     @words = words.split(/\W+/)
     vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
     combo_answer = []

     @words.each do |word|
     letters = word.scan(/\w/)
       if vowels.include?(letters[0])
         answer = "#{letters.join('')}way"
       else
         until vowels.include?(letters[0]) do
           letters.push(letters[0])
           letters.shift
          end
          answer = "#{letters.join('')}ay"
        end
      combo_answer << answer
    end
    combo_answer.join(" ")
  end
end
