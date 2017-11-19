require_relative 'config/environment'

class App < Sinatra::Base


	get '/' do # because this page is the index 

		erb :user_input
	end 

	post '/piglatinize' do #or to new page? -- 
		
		# @piglatin = PigLatinizer.new.piglatinize(params[:user_phrase])
		pl = PigLatinizer.new
    	@piglatin = pl.to_pig_latin(params[:user_phrase])
		
		erb :results
	end 
end