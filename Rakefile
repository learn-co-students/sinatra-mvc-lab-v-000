ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'

# Type `rake -T` on your command line to see the available rake tasks.
def reload!
  load './models/piglatinizer.rb'
end

task :console do
  Pry.start
end
