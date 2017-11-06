require 'pry'
class PigLatinizer




  def piglatinize(user_input)
    @user_input = user_input
    word = @user_input
    if word.match(/\A(b|c|d|f|g|h|j|k|l|m|n|p|q|r|s|t|v|w|x|y|z)+/)
    letter = word.match(/\A(b|c|d|f|g|h|j|k|l|m|n|p|q|r|s|t|v|w|x|y|z)+/)[0]
    word = word.sub(letter, '')
    word += letter + 'ay'
    else
    word += "way"
    end
    word
  end
  def to_pig_latin(user_input)
    @user_input = user_input
    split_input = @user_input.split(' ')
    latin = split_input.map do |word|
      if word.match(/\A(b|B|c|C|d|D|f|F|g|G|h|H|j|J|k|K|l|L|m|M|n|N|p|P|q|Q|r|R|s|S|t|T|v|V|w|W|x|X|y|Y|z|Z)+/)
      letter = word.match(/\A(b|B|c|C|d|D|f|F|g|G|h|H|j|J|k|K|l|L|m|M|n|N|p|P|q|Q|r|R|s|S|t|T|v|V|w|W|x|X|y|Y|z|Z)+/)[0]
      word = word.sub(letter, '')
      word += letter + 'ay'
      else
      word += "way"
      end
    end
    latin.join(' ')
  end
end
