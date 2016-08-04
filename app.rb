require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do
		erb :user_input
	end

	post '/' do
		@result = PigLatinizer.new(params[:user_phrase]).piglatinize
		"#{@result}"
	end

end