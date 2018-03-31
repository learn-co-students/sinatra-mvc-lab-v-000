class PigLatinizer
 
 def piglatinize(user_input)
  final_string = (user_input.split(" ").length == 1) ? piglatinize_word(user_input) : piglatinize_sentence(user_input)
  puts final_string
  final_string
 end
 
 def start_with_a_vowel(l)
  vowels = %w[a e i o u A E I O U]
  vowels.include?(l)
 end
 
 def piglatinize_word(word)
  if start_with_a_vowel(word[0])
   word = word + "w"
  elsif !start_with_a_vowel(word[0]) && !start_with_a_vowel(word[1]) && !start_with_a_vowel(word[2])
    word = word.slice(3..-1) + word.slice(0,3)
  elsif !start_with_a_vowel(word[0]) && !start_with_a_vowel(word[1])
    word = word.slice(2..-1) + word.slice(0,2)
  else
    word = word.slice(1..-1) + word.slice(0)
  end 
    word << 'ay'
 end
     
 def piglatinize_sentence(s)
  s.split(" ").collect{|w| piglatinize_word(w)}.join(" ")
 end
 
 
end