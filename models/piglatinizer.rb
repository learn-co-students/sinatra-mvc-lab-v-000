class PigLatinizer
   def piglatinize(text)
    words = text.split(' ')
    vows=['a','e','i','o','u']
    pig = words.collect{ |w|
      if vows.include?(w[0].downcase)
        w + 'way'
      else
        letters = w.split('')
        n = letters.index{|l| vows.include?(l)}
        if n == 1
          w[n,w.length] + w[0] + 'ay'
        else
          w[n,w.length] + w[0,n] + 'ay'
        end
      end
      }
    pig.join(' ')
  end
end