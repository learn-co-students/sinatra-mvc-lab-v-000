class PigLatinizer

  attr_accessor :user_phrase

  VOWELS = %w{a e i o u}
  CONSONANTS = ('a'.. 'z').to_a.delete_if { |l| VOWELS.include?(l) }

  def piglatinize(word)
    @word = word
    make_pig_latin(@word)
  end

  def to_pig_latin(user_phrase)
    @user_phrase = user_phrase
    @user_phrase_arr = @user_phrase.split(' ')
    @pl_arr = @user_phrase_arr.map do |word|
      make_pig_latin(word)
    end
    @pl_arr.join(' ')
  end

  def make_pig_latin(word)
    if word.length == 1
      word + 'way'
    elsif VOWELS.include?(word[0].downcase) && CONSONANTS.include?(word[1].downcase)
      word + 'way'
    elsif word.include?('squ')
      "#{word.gsub('squ', '')}squay"
    elsif word.include?('qu')
      "#{word.gsub('qu', '')}quay"
    elsif word.include?('sch')
      "#{word.gsub('sch', '')}schay"
    elsif word.length >= 2 && CONSONANTS.include?(word[0].downcase) && VOWELS.include?(word[1].downcase)
      word.slice(1, word.length) + "#{word[0]}ay"
    elsif word.length >= 3 && CONSONANTS.include?(word[0].downcase) && CONSONANTS.include?(word[1].downcase) && VOWELS.include?(word[2].downcase)
      word.slice(2, word.length) + "#{word[0]}#{word[1]}ay"
    elsif word.length >= 4 && CONSONANTS.include?(word[0].downcase) && CONSONANTS.include?(word[1].downcase) &&
      CONSONANTS.include?(word[2].downcase) && VOWELS.include?(word[3].downcase)
      word.slice(3, word.length) + "#{word[0]}#{word[1]}#{word[2]}ay"
    elsif word.length > 4 && VOWELS.include?(word[0].downcase) && VOWELS.include?(word[1].downcase) && CONSONANTS.include?(word[2].downcase) && word.end_with?('y')
      word + 'way'
    else
      "#{word}ay"
    end
  end

end
