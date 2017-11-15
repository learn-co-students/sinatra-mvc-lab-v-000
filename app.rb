require_relative 'config/environment'

class App < Sinatra::Base


	get '/' do # because this page is the index 

		erb :user_input
	end 

	post '/' do #or to new page? -- 
		@result = Pig_Latinizer.new(params[:user_input])
		
		erb :results
	end 
end