class PigLatinizer
  attr_reader :vowels, :blends

  def initialize
    @vowels = ['a', 'e', 'i', 'o', 'u','A','E', 'I', 'O', 'U']
    @blends = ["bl", "br", "ch", "cl", "cr", "dr", "fl", "fr", "gl", "gr", "pl",
      "pr", "sc", "sh", "sk", "sl", "sm", "sn", "sp", "st", "sw", "th", "tr",
      "tw", "wh", "wr", "sch", "scr", "shr", "sph", "spl", "spr", "squ", "str", "thr"]
  end

  def piglatinize(string)
    words = string.split(' ')

    new_sentance = words.collect do |word|
                     first_letter = word.split('').shift
                     if vowels.include?(first_letter)
                        reassemble(word, 'v')
                     elsif consonant_blend?(word, 3)
                        reassemble(word, 'cb3')
                     elsif consonant_blend?(word, 2)
                       reassemble(word, 'cb2')
                     else
                       reassemble(word)
                     end
                   end
    new_sentance.join(' ')
  end

  def consonant_blend?(word, blend_length)
    characters = word.downcase.split('').shift(blend_length).join

    word.length >= blend_length && blends.include?(characters)
  end

  def reassemble(word, type='c')
    letters = word.split('')

    if type == 'v'
      letters.join + 'way'
    elsif type == 'cb3'
      tail = letters[0..2].join
      head = letters[3..-1].join
      head + tail + 'ay'
    elsif type == 'cb2'
      tail = letters[0..1].join
      head = letters[2..-1].join
      head + tail + 'ay'
    else
      tail = letters[0]
      head = letters[1..-1].join
      head + tail + 'ay'
    end
  end
end
