class PigLatinizer

  def piglatinize(word)
    word_arr = word.split('')
    size = word.size
    vowels = ['a','e','i','o','u','A','E','I','O','U']
    i = word_arr.index{|c| vowels.include?(c)}
    if i == 0
      word + "way"
    else
      word[i,size]+word[0,i]+"ay"
    end
  end

  def to_pig_latin(string)
    string.split(" ").collect do |word|
      piglatinize(word)
    end.join(' ')
  end
end
