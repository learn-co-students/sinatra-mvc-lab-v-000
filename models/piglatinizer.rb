require 'pry'
class PigLatinizer

  def piglatinize(words)
    vowels = ['a','e','i','o','u'] + ['A','E','I','O','U']
    consonants = ('a'..'z').to_a + ('A'..'Z').to_a
    consonants = consonants.delete_if {|letter| vowels.include?(letter)}
    new_array = []
    words = words.split(/\W/)
    words.each do |word|
    qu_index = word.index("qu")
    if vowels.include?(word[0])
      new_array << (word + "ay")
    elsif word.include?("qu") && word.index("qu") != 0
      new_array << word[qu_index+2..word.length-1] + word[0] + word[qu_index..qu_index+1] + "ay"
    elsif word.include?("qu")   
      new_array << word[qu_index+2..word.length-1] + word[qu_index..qu_index+1] + "ay"
    elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
      new_array << (word[3..word.length-1] + word[0..2] + "ay")
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      new_array << (word[2..word.length-1] + word[0..1] + "ay")
    elsif consonants.include?(word[0])
      new_array << (word[1..word.length-1] + word[0] + "ay")
    end
  end
    new_array.join(' ')
end

def to_pig_latin(words)
  words = words.split(/\W/)     #violates DRY
  piglatinize(words.join(" ")) 
end

end