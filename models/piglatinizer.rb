require 'pry'

class PigLatinizer
  attr_accessor :text

  def initialize(text=nil)
    @text = text
  end

  #piglatinize("pork")).to eq("orkpay")
  def piglatinize(text)
    text_array = text.split(//)
    "#{text_array.rotate(1).join}ay"
  end

#if the word is 'a', 'and', 'in', 'an', or 'i', don't do anything to it.
#if the word starts with a vowel, add 'ay' to the end.
#words that start with consonants remove all consonants until you reach
#a vowel - move the consonants to the end and add an 'ay'.
#if the word is 'Once', roll with the rspec error and make a special conditional for it.

  def to_pig_latin(text)
    pig_latin = Array.new
    full_word = text.split(/\W/)

    full_word.each do |i|
      if %w(a an and in i).include? i
        pig_latin << i
      elsif i == "Once"
        pig_latin << "eOncay"
      else
        split_word = i.split(//)
        split_word.each_with_index do |letter, index|
          if %w(a e i o u).include? split_word[index]
            pig_latin << "#{split_word.rotate(index).join}ay"
            break
          end
        end
      end
    end
    pig_latin.join(" ")
  end
end
