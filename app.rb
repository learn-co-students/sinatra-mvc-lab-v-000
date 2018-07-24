require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do
		erb :index
	end
	
	post '/piglatinize' do
		@params = params
		pl_model = PigLatinizer.new

		@translated_phrase = pl_model.piglatinize(@params[:user_phrase])
		erb :piglatinize
	end
end
