class PigLatinizer
  attr_accessor :words

  def initialize
    @words = words
  end

  def piglatinize(words)
    @words = words
    pig_words = []
    @words.split.each do |word|
      if !(/\A[aeiou]/.match("#{word}".downcase).nil?)
        pig_words << "#{word}way"
      elsif !(/\A[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]{3}/.match("#{word}.downcase").nil?)
        pig_words << "#{word[3..-1]}#{word[0, 3]}ay"
      elsif !(/\A[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]{2}/.match("#{word}.downcase").nil?)
        pig_words << "#{word[2..-1]}#{word[0, 2]}ay"
      elsif !(/\A[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/.match("#{word}.downcase").nil?)
        pig_words << "#{word[1..-1]}#{word[0, 1]}ay"
      end
    end
    return pig_words.join(" ")
  end

  def to_pig_latin(words)
    @words = words
    pig_words = []
    @words.split.each do |word|
      if !(/\A[aeiou]/.match("#{word}".downcase).nil?)
        pig_words << "#{word}way"
      elsif !(/\A[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]{3}/.match("#{word}.downcase").nil?)
        pig_words << "#{word[3..-1]}#{word[0, 3]}ay"
      elsif !(/\A[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]{2}/.match("#{word}.downcase").nil?)
        pig_words << "#{word[2..-1]}#{word[0, 2]}ay"
      elsif !(/\A[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/.match("#{word}.downcase").nil?)
        pig_words << "#{word[1..-1]}#{word[0, 1]}ay"
      end
    end
    return pig_words.join(" ")
  end

end
