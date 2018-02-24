require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do 
		erb :user_input
	end

	# post '/' do
	# 	@pig_text = PigLatinizer.new.to_pig_latin(params[:user_phrase])
	# end

	post '/piglatinize' do 
		@pig_text = PigLatinizer.new.to_pig_latin(params[:user_phrase])
		erb :user_input
	end


end