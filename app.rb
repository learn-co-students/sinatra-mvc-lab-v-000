require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do 
		erb :user_input
	end

	post '/piglatinize' do

		@user_input = params[:user_phrase].to_s
		@output = PigLatinizer.new.to_pig_latin(@user_input)
		erb :piglatinizer
	end


end