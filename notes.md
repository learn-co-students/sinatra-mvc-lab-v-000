## Checking for Consonants with a Regular Expression

A consonant is any letter that isn't a vowel.  So they are fairly simple to target via a regular expression.  To capture anything that's not a vowel we use this expression `/[^aeiou]/`.  Since we're building a Piglatin translator the goal is that if the word starts with one, two or three consonants to take them and move the to end of a word.  As it is our regular expression will capture any amount of non vowels everywhere in our string.

To capture at the beginning of a string we use another caret `/^[^aeiou]/` and we want to capture one the first one, two or three matching characters.  For this we use `{1,3}` if we just used `{3}` it would capture only the first three but we want one, two or three so this is the expression `/^[^aeiou]{1,3}/`.  Finally to make this more readable we can use whitespace if we choose for the regular expression to ignore whitespace and not evaluate it.  While we're at it lets make the regular expression case insensitive `/ ^ [^aeiou] {1,3} /ix`

With this consonant expression we can now match strings against it using `MatchData`.  I suggest using pry for these examples since i used pry specific methods like `cd` and `ls`.

```pry
pry > def consonant_expression
pry *   /^ [^aeiou] {1,3}/ix
pry * end    
=> :consonant_expression
pry > consonant_expression.match('Stream')
=> #<MatchData "Str">
pry > capture = _
=> #<MatchData "Str">
pry > ls capture
MatchData#methods:
  ==  begin     end   hash     length  offset      pre_match     regexp  string  to_s     
  []  captures  eql?  inspect  names   post_match  pretty_print  size    to_a    values_at
pry >
pry > capture.post_match
=> "eam"
pry > capture
=> #<MatchData "Str">
pry > capture.to_s
=> "Str"
pry > capture.post_match.to_s
=> "eam"
pry > capture.post_match.to_s + capture.to_s + 'ay'
=> "eamStray"
pry >
```
