
[1mFrom:[0m /home/radditude/code/labs/sinatra-mvc-lab-v-000/models/piglatinizer.rb @ line 27 PigLatinizer#piglatinize:

     [1;34m9[0m: [32mdef[0m [1;34mpiglatinize[0m(text)
    [1;34m10[0m:   [32mif[0m text.include?([31m[1;31m"[0m[31m [1;31m"[0m[31m[0m)
    [1;34m11[0m:     words = text.split([31m[1;31m"[0m[31m [1;31m"[0m[31m[0m)
    [1;34m12[0m:     words.map! [32mdo[0m |word|
    [1;34m13[0m:       [32mif[0m word.start_with?([31m[1;31m"[0m[31m/[aeiou]/[1;31m"[0m[31m[0m)
    [1;34m14[0m:         word.concat([31m[1;31m"[0m[31mway[1;31m"[0m[31m[0m)
    [1;34m15[0m:       [32melse[0m
    [1;34m16[0m:         first_letter = word.chr
    [1;34m17[0m:         word.slice!([1;34m1[0m, [1;34m-1[0m).concat(first_letter).concat([31m[1;31m"[0m[31may[1;31m"[0m[31m[0m)
    [1;34m18[0m:       [32mend[0m
    [1;34m19[0m:     [32mend[0m
    [1;34m20[0m:     pig_latin = words.join([31m[1;31m"[0m[31m [1;31m"[0m[31m[0m)
    [1;34m21[0m:   [32melse[0m
    [1;34m22[0m:     word = text.strip
    [1;34m23[0m:     [32mif[0m word.start_with?([31m[1;31m"[0m[31m/[aeiou]/[1;31m"[0m[31m[0m)
    [1;34m24[0m:       word.concat([31m[1;31m"[0m[31mway[1;31m"[0m[31m[0m)
    [1;34m25[0m:     [32melse[0m
    [1;34m26[0m:       first_letter = word.chr
 => [1;34m27[0m:       binding.pry
    [1;34m28[0m:       pig_latin = word.slice!([1;34m1[0m, [1;34m-1[0m).concat(first_letter).concat([31m[1;31m"[0m[31may[1;31m"[0m[31m[0m)
    [1;34m29[0m:     [32mend[0m
    [1;34m30[0m:   [32mend[0m
    [1;34m31[0m: [32mend[0m

