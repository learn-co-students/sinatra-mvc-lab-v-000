require_relative 'config/environment'

class App < Sinatra::Base


	get '/user_input_submit' do # because this page is like the index 

		erb: user_input_submit
	end 

	post '/results' #or to new page -- 
		@result = PigLatinizer.new(params[:user_input])
		
		erb: results
	end 

end