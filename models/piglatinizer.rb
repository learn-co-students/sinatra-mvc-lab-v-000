require 'iglatinpay'
require 'pry'


class PigLatinizer

  attr_reader :text

  def initialize

  end

  def piglatinize(text)
    text.to_piglatin
  end


end
