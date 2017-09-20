require_relative 'config/environment'

class App < Sinatra::Base

	get "/" do
		erb :user_input
	end

	post "/piglatinize" do
		@params = params
		erb :pig_page
	end

end