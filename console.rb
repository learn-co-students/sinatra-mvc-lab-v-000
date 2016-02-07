require 'pry'

def reload!
   load "./models/piglatinizer.rb" 
end

require_relative "./models/piglatinizer.rb"

Pry.start

