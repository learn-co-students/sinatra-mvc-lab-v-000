require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do 
		erb :user_input
	end

	post '/piglatinize' do 
		piglatinized = PigLatinizer.new
		@piglatinized_text = piglatinized.piglatinize(params[:user_phrase])

		erb :results
	end

	# post '/piglatinize' do 
		
	# 	erb :user_input
	# end

end