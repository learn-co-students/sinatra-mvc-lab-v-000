class PigLatinize

  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def pg
    consonant = [B, C, D, F, G, H, J, K, L, M, N, P, Q, R, S, T, V, X, Z, W, Y]
    arr1 = phrase.split(' ') #put phrase into array
    arr2 = []
    arr1.collect do |word|
      s1 = word.split('') #put word into array
      s2 = word.split('') #put word into array
        s1.each.with_index do |letter, i|
          if consonant.include?(letter.uppcase)
            s2[i]

end
