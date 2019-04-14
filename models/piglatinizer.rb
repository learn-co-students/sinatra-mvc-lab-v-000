class PigLatinizer 
  
  
  def piglatinize(user_phrase)
    words = []
    piglatin_words = []
    words << user_phrase.split(' ')
    words.first.each do |i|
      if i.downcase.split(/([aeiou].*)/).first.length > 1 
            cluster = i.downcase.split(/([aeiou].*)/).first.length
            modified = i.slice(cluster, i.split('').count - 1)
            first_consonants = i.split('')[0,cluster].join('')
            new_word = modified + first_consonants + 'ay'
            piglatin_words << new_word
      elsif
        if i.downcase.start_with?('a','e','i','o','u')
          new_word = i + 'way'
          piglatin_words << new_word
        end
      else
        modified = i.slice(1, i.split('').count)
        first_letter = i.split('').first
        new_word = modified + first_letter + 'ay'
        piglatin_words << new_word
      end 
    end
    phrase = piglatin_words.join(' ')
    phrase
  end 
  
end 