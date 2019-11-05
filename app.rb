#app.rb serves as the controller for the application

require_relative 'config/environment'

#because the controller uses the class PigLatinizer from /models/PigLatinize.rb, we have to require taht file here
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

#when the server recieves a get request for the homepage'/' it will show the user_input.erb file located in views
	get '/' do
		erb :user_input
	end

#in the user_input.erb file in the views directory is a form, this form has a textare sends a post request to piglatinize
	post '/piglatinize' do
		@words = PigLatinizer.new.to_pig_latin(params[:user_phrase])    #user_phrase derives from form's textarea located in the user_input.erb file in the views directory , @words is also the attr_accessor for the PigLatinizer class
    # @words will be visible in our piglatinize.erb file because it is stipulated below
		erb :piglatinize
	end

end
