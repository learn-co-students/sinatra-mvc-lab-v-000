require 'pry'

class PigLatinizer
  attr_reader :text

  def initialize(text=:words)
    @text = text
  end

  def piglatinize(w = @text)
    consonent_clusters = ["ch", "sh", "sm", "st", "th", "gl", "pl", "sp", "pr", "wh", "sk"]
    vowels = ["a", "e", "i", "o", "u"]
    if w.downcase.start_with?("spr", "str")
      w.split(//, 4).rotate(3).push("a", "y").join
    elsif consonent_clusters.any?{|c| c == w.downcase.split(//, 3).rotate(2).drop(1).join}
      w.split(//, 3).rotate(2).push("a", "y").join
    elsif vowels.any?{|v| v == w.downcase.split(//, 2)[0]}
      w.split.push("w", "a", "y").join
    else
      w.split(//, 2).rotate.push("a", "y").join
    end
  end

  def to_pig_latin(t = @text)
    t.split(" ").collect{|w| piglatinize(w)}.join(" ")
  end

end
