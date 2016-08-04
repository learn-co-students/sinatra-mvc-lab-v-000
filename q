
[1mFrom:[0m /home/jmb521/code/labs/sinatra-mvc-lab-v-000/models/piglatinizer.rb @ line 12 PigLatinizer#piglatinize:

     [1;34m9[0m: [32mdef[0m [1;34mpiglatinize[0m(word)
    [1;34m10[0m:   user_split = word.split([31m[1;31m"[0m[31m[1;31m"[0m[31m[0m)
    [1;34m11[0m:   first_letter = user_split.shift.downcase
 => [1;34m12[0m:   binding.pry
    [1;34m13[0m:   [32mif[0m !user_split[[1;34m1[0m] == [31m[1;31m"[0m[31ma[1;31m"[0m[31m[0m || !user_split[[1;34m1[0m] == [31m[1;31m"[0m[31me[1;31m"[0m[31m[0m || !user_split[[1;34m1[0m] == [31m[1;31m"[0m[31mi[1;31m"[0m[31m[0m || !user_split[[1;34m1[0m] = [31m[1;31m"[0m[31mo[1;31m"[0m[31m[0m || !user_split[[1;34m1[0m] = [31m[1;31m"[0m[31mu[1;31m"[0m[31m[0m
    [1;34m14[0m:     second_letter = user_split.shift
    [1;34m15[0m:   [32mend[0m
    [1;34m16[0m: 
    [1;34m17[0m: [1;34m#   new_word = [][0m
    [1;34m18[0m: [1;34m#   new_word << user_split[0m
    [1;34m19[0m: [1;34m#[0m
    [1;34m20[0m: [1;34m#   new_word << first_letter[0m
    [1;34m21[0m: [1;34m#[0m
    [1;34m22[0m: [1;34m#[0m
    [1;34m23[0m: [1;34m#   if first_letter == "a" || first_letter == "e" || first_letter == "i" || first_letter == "o" || first_letter == "u"[0m
    [1;34m24[0m: [1;34m#[0m
    [1;34m25[0m: [1;34m#     if new_word.length == 2[0m
    [1;34m26[0m: [1;34m#       new_word[1] = new_word[1].upcase[0m
    [1;34m27[0m: [1;34m#     end[0m
    [1;34m28[0m: [1;34m#     new_word << "way"[0m
    [1;34m29[0m: [1;34m#[0m
    [1;34m30[0m: [1;34m#   else[0m
    [1;34m31[0m: [1;34m#     new_word << "ay"[0m
    [1;34m32[0m: [1;34m#   end[0m
    [1;34m33[0m: [1;34m#   new_word.join[0m
    [1;34m34[0m: [32mend[0m

