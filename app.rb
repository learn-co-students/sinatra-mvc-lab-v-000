require_relative 'config/environment'

class App < Sinatra::Base


	get '/' do # because this page is the index 

		erb :user_input
	end 

	post '/piglatinize' do #or to new page? -- 
		
		@result = PigLatinizer.new.piglatinize(params[:user_phrase])
		 
		
		erb :results
	end 
end