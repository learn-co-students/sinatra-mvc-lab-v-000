class PigLatinizer

  def initialize

  end

  def to_pig_latin(sentence)
    sentence.split(" ").collect {|word| piglatinize(word)}.join(" ")
  end

  def piglatinize(word)
    letters = word.downcase.split("")
    vowels = ['a','e','i','o','u']
    consonant_cluster = 0
    letters.each {|letter| vowels.include?(letter) ? break : consonant_cluster+=1}
    if consonant_cluster == 0
      word+"way"
    else
      word[consonant_cluster..word.length]+word[0..consonant_cluster-1]+"ay"
    end
  end



end
