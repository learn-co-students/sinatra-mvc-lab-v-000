class PigLatinizer

  Alpha = ('a'..'z').to_a
  Vowels = %w[a e i o u]
  Consonants = Alpha - Vowels
  Cluster2=["qu","ch","sm","sr","sp","ph","tr","cr","gr","mn"]
  Cluster3=["spr","squ","str","Str"]

  def to_pig_latin(text)
    result=[]
    text.split(' ').each do |word|
      result<<piglatinize(word)
    end
    result.join(' ')
  end


  def piglatinize(word)

  if Vowels.include?(word[0].downcase)
    word + 'way'
  elsif Cluster3.include?(word[0..2].downcase)
     word[3..-1]+"#{word[0..2]}"+'ay'
  elsif Cluster2.include? (word[0..1])
    word[2..-1]+"#{word[0..1]}"+'ay'


  elsif Consonants.include?(word[0]) &&
    Consonants.include?(word[1])
    word[2..-1] + word[0..1] + 'ay'

  else Consonants.include?(word[0])
    word[1..-1] + word[0..0] + 'ay'
  end

end


end
