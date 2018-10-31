class PigLatinizer

  def initialize(string)
    @orig_string = string
  end

  def piglatinize_word
    @orig_string[1..-1] + @orig_string[0] + "ay"
  end
end
