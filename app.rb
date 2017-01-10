require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

	get '/' do
		erb :user_input
	end

	post '/piglatinize' do
		# binding.pry
		@user_input = params["user_phrase"]
		pl_instance = PigLatinizer.new
    @piglatin_phrase = pl_instance.to_pig_latin(@user_input)
    
		erb :piglatinresults
	end
end