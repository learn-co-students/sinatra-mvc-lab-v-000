require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
	
	get '/' do
		erb :user_input
	end

	post '/piglatinize' do
		user_input = params[:user_phrase]
		@piglatinized = PigLatinizer.new.to_pig_latin(user_input)
		erb :piglatinize
	end
end