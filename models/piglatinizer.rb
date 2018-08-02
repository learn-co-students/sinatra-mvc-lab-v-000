require 'pry'
class PigLatinizer
  attr_reader :words

  def piglatinize(string)
  sentence = string.split(" ").map do |word|
    if !word[0].scan(/[aeiouAEIOU]/).empty?
      word << "way"
      word
    elsif !word[0].scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/).empty? && !word[1].scan(/[aeiou]/).empty?
      word << word[0]
      word[0] = ""
      word << "ay"
      word
    elsif !word[0].scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/).empty? && !word[1].scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/).empty? && !word[2].scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/).empty?
      word << word[0]
      word << word[1]
      word << word[2]
      word << "ay"
      word[0] = ""
      word[0] = ""
      word[0] = ""
      word
    elsif !word[0].scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/).empty? && !word[1].scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/).empty?
      word << word[0]
      word << word[1]
      word << "ay"
      word[0] = ""
      word[0] = ""
      word
    end
  end
    sentence.join(" ")

  end

end
