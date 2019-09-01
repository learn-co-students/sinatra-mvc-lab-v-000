class PigLatinizer

  # use split method to concentrate on each word and use algorithm to add vowels/consonants then join back
  def piglatinize(text)

    vowels = ['a','e','i','o','u']
    vowels_upcased = vowels.map{|l| l.upcase}
    consonants = ('a'..'z').to_a - vowels
    consonants_upcase = consonants.map{|l| l.upcase}
    consonants_cluster = ['bl','br','ch','cl','cr','dr','fl','fr','gl','gr','pl','pr','sc',
                          'sh','sk','sl','sm','sn','sp','st','sw','th','tr','tw','wh','wr',
                          'sch','scr','shr','sph','spl','spr','squ','str','thr']
    consonants_cluster_upcase = consonants_cluster.map{|l| l.capitalize }

      if consonants_cluster.include?(text[0..2]) || consonants_cluster_upcase.include?(text[0..2])
        letter = text.slice!(0..2)
        text = text + letter + "ay"
      elsif consonants_cluster.include?(text[0..1])
        letter = text.slice!(0..1)
        text = text + letter + "ay"
      elsif vowels.include?(text[0]) || vowels_upcased.include?(text[0])
        text + 'way'
      elsif consonants.include?(text[0]) || consonants_upcase.include?(text[0])
        letter = text.slice!(0)
        text = text + letter + "ay"
      end
  end
  def to_pig_latin(sentence)
    sentence_split = sentence.split(" ")
    sentence_split.map{|word| piglatinize(word)}.join(" ")
  end

end
